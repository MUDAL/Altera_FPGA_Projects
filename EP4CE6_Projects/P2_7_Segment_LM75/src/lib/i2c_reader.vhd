library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Module to read data from LM75 sensor via I2C.
-- From the LM75 datasheet, bits D15 to D7 contain the temperature ....
-- data to be obtained from the sensor i.e. 9 out of the 16 bits from ..
-- the sensor will be required. 

-- D15: sign bit, D7: 0.5 celsius.
-- D6 to D0: don't care 
-- This design is concerned with +ve temperatures only. 
-- 
-- An internal signal (buffer) holds the bits sent by the LM75.  
-- The LM75 will send a total of 17 bits (16 data bits and 1 ACK bit).

entity i2c_reader is
	port(rst_n: in std_logic;
		  clk: in std_logic;
		  en: in std_logic;
		  sda: inout std_logic;
		  scl: out std_logic;
		  data_out: out std_logic_vector(8 downto 0); --9-bit data from LM75
		  done: out std_logic);
end i2c_reader;

architecture i2c_reader_rtl of i2c_reader is
	--I2C address (RW = 1): 10010001. The ones are replaced with Z because a
	--logic high (or '1') means a device releases the SDA line (high impedance).
   constant ADDR: std_logic_vector(0 to 7) := "Z00Z000Z";--I2C ADDR, R/W = 1
	constant MID_HIGH_PULSE: integer := 124; --Midpoint of high SCL pulse
	constant START_CYCLE: integer := 149; --For the start condition
	constant HALF_SCL_CYCLE: integer := 249; --Half of SCL cycle
	constant MID_LOW_PULSE: integer := 374; --Midpoint of low SCL pulse
	constant FULL_SCL_CYCLE: integer := 499; --Full SCL cycle
	type i2c_state is (ST_IDLE, ST_START, ST_SEND_ADDR, ST_GET_ACK_HIGH_BYTE,
							 ST_SEND_ACK, ST_GET_LOW_BYTE, ST_SEND_NACK, ST_DONE, 
							 ST_STOP, ST_RESTART);
	signal state: i2c_state;
	signal next_state: i2c_state;
	signal index: integer range 0 to 26;
	signal i2c_buff: std_logic_vector(0 to 17);
	signal clks: unsigned(8 downto 0); --Number of system clocks in SCL	
begin
	
	--Counts number of system clocks [50MHz] in an I2C clock [100kHz] period 
	clock_counter: process(rst_n,clk)
	begin
		if rst_n = '0' then
			clks <= (others => '0');	
		elsif rising_edge(clk) then		
			if clks = to_unsigned(FULL_SCL_CYCLE,clks'length) then
				clks <= (others => '0');
			else
				clks <= clks + 1;
			end if;
		end if;
	end process;
	
	--Generates I2C clock (SCL)
	scl_clock_gen: process(rst_n,clk)
	begin
		if rst_n = '0' then
			scl <= 'Z';
		elsif rising_edge(clk) then
			case state is
				when ST_IDLE | ST_RESTART =>
					scl <= 'Z';	
				when ST_STOP =>
					if clks <= to_unsigned(HALF_SCL_CYCLE,clks'length) then
						scl <= 'Z';
					end if;
				when others =>
					if clks <= to_unsigned(HALF_SCL_CYCLE,clks'length) then
						scl <= 'Z';
					else
						scl <= '0';
					end if;					
			end case;
		end if;
	end process;
	
	next_state_logic: process(state,en,clks,index)
	begin
		next_state <= state;
		case state is
			when ST_IDLE =>
				if en = '1' and clks = to_unsigned(START_CYCLE,clks'length) then
					next_state <= ST_START;
				end if;			
			when ST_START =>
				if clks > to_unsigned(HALF_SCL_CYCLE,clks'length) then
					next_state <= ST_SEND_ADDR;
				end if;			
			when ST_SEND_ADDR =>
				if index = 8 then
					next_state <= ST_GET_ACK_HIGH_BYTE;
				end if;
			when ST_GET_ACK_HIGH_BYTE =>
				if index = 17 then
					next_state <= ST_SEND_ACK;
				end if;
			when ST_SEND_ACK =>
				if index = 18 then
					next_state <= ST_GET_LOW_BYTE;
				end if;
			when ST_GET_LOW_BYTE =>
				if index = 26 then
					next_state <= ST_SEND_NACK;
				end if;
			when ST_SEND_NACK =>
				if index = 0 then
					next_state <= ST_DONE;
				end if;
			when ST_DONE =>
				if clks = to_unsigned(MID_LOW_PULSE,clks'length) then
					next_state <= ST_STOP;
				end if;			
			when ST_STOP =>
				if clks = to_unsigned(MID_HIGH_PULSE,clks'length) then
					next_state <= ST_RESTART;
				end if;			
			when ST_RESTART =>
				if en = '0' then
					next_state <= ST_IDLE;
				end if;			
		end case;
	end process;

	state_register: process(rst_n,clk)
	begin
		if rst_n = '0' then
			state <= ST_IDLE;
		elsif rising_edge(clk) then
			state <= next_state;
		end if;
	end process;	
	
	combinational_output: process(state)
	begin	
		case state is									
			when ST_DONE | ST_STOP | ST_RESTART =>
				done <= '1';
			when others =>
				done <= '0';			
		end case;
	end process;	

	--bit 9 of 'data_out' is redundant. [Read bits from left to right]
	data_out <= i2c_buff(1 to 8) & i2c_buff(10);
	
	registered_outputs: process(rst_n,clk)
	begin
		if rst_n = '0' then
			sda <= 'Z';
			index <= 0;
			i2c_buff <= (others => '0');
		elsif rising_edge(clk) then
			case state is
				when ST_IDLE =>
					sda <= 'Z';
					if en = '1' and clks = to_unsigned(START_CYCLE,clks'length) then
						sda <= '0';
					end if;					
				when ST_SEND_ADDR =>
					if clks = to_unsigned(MID_LOW_PULSE,clks'length) then
						sda <= ADDR(index);
					elsif clks = to_unsigned(MID_HIGH_PULSE,clks'length) then
						index <= index + 1;
					end if;
				when ST_GET_ACK_HIGH_BYTE =>
					--Receive slave ACK (index 8) and high byte (index 9 to 16)
					if clks = to_unsigned(MID_HIGH_PULSE,clks'length) then
						i2c_buff(index - 8) <= sda;
						index <= index + 1;
					end if;					
				when ST_SEND_ACK =>
					--Send master ACK
					if clks = to_unsigned(MID_LOW_PULSE,clks'length) then
						sda <= '0';
					elsif clks = to_unsigned(MID_HIGH_PULSE,clks'length) then
						index <= index + 1;
					end if;						
				when ST_GET_LOW_BYTE =>
					--Read low byte (index 18 to 25)
					if clks = to_unsigned(MID_HIGH_PULSE,clks'length) then
						i2c_buff(index - 8) <= sda;
					elsif clks = to_unsigned(MID_LOW_PULSE,clks'length) then
						index <= index + 1;
					end if;
				when ST_SEND_NACK =>
					if clks = to_unsigned(MID_LOW_PULSE,clks'length) then
						sda <= 'Z';
						index <= 0;
					end if;								
				when ST_DONE =>
					if clks = to_unsigned(MID_LOW_PULSE,clks'length) then
						sda <= '0';
					end if;
				when ST_STOP =>
					if clks = to_unsigned(MID_HIGH_PULSE,clks'length) then
						sda <= 'Z';
					end if;
				when others =>
			end case;
		end if;
	end process;
	
end i2c_reader_rtl;