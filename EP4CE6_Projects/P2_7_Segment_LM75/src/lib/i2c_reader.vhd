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
   constant addr: std_logic_vector(0 to 7) := "Z00Z000Z";--I2C addr, R/W = 1
	type i2c_state is (ST_IDLE, ST_START, ST_COMM, ST_DONE, ST_STOP);
	signal state: i2c_state;
	signal index: integer range 0 to 26;
	signal i2c_buff: std_logic_vector(0 to 17);
	signal clk_count: unsigned(8 downto 0);
begin
	
	--Counts number of system clocks [50MHz] in an I2C clock [100kHz] period 
	clock_counter: process(rst_n,clk)
	begin
		if rst_n = '0' then
			clk_count <= (others => '0');	
		elsif rising_edge(clk) then		
			if clk_count = to_unsigned(499,clk_count'length) then
				clk_count <= (others => '0');
			else
				clk_count <= clk_count + 1;
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
				when ST_IDLE =>
					scl <= 'Z';
				when ST_START | ST_COMM | ST_DONE =>
					if clk_count <= to_unsigned(249,clk_count'length) then
						scl <= 'Z';
					else
						scl <= '0';
					end if;	
				when ST_STOP =>
					if clk_count <= to_unsigned(249,clk_count'length) then
						scl <= 'Z';
					end if;				
			end case;
		end if;
	end process;
	
	--Outputs
	--bit 9 of 'data_out' is redundant. [Read bits from left to right]
	data_out <= i2c_buff(1 to 8) & i2c_buff(10);
	outputs: process(rst_n,clk)
	begin
		if rst_n = '0' then
			state <= ST_IDLE;
			done <= '0';
			sda <= 'Z';
			index <= 0;
			i2c_buff <= (others => '0');
		elsif rising_edge(clk) then	
			case state is
				when ST_IDLE =>
					sda <= 'Z';
					if en = '1' then
						if clk_count = to_unsigned(149,clk_count'length) then
							state <= ST_START;
							sda <= '0';
						end if;
					end if;					
				when ST_START =>
					if clk_count > to_unsigned(249,clk_count'length) then
						state <= ST_COMM;
					end if;
				when ST_COMM =>
					--Send slave address
					if index <= 7 then
						if clk_count = to_unsigned(374,clk_count'length) then
							sda <= addr(index);
						end if;
						if clk_count = to_unsigned(124,clk_count'length) then
							index <= index + 1;
						end if;
					end if;								
					--Receive slave ACK
					if index = 8 then
						if clk_count = to_unsigned(124,clk_count'length) then
							i2c_buff(index - 8) <= sda;
							index <= index + 1;
						end if;
					end if;							
					--Read high byte
					if index > 8 and index <= 16 then
						if clk_count = to_unsigned(124,clk_count'length) then
							i2c_buff(index - 8) <= sda;
							index <= index + 1;
						end if;					
					end if;		
					--Send master ACK
					if index = 17 then
						if clk_count = to_unsigned(374,clk_count'length) then
							sda <= '0';
							index <= index + 1;
						end if;						
					end if;								
					--Read low byte
					if index > 17 and index <= 25 then
						if clk_count = to_unsigned(124,clk_count'length) then
							i2c_buff(index - 8) <= sda;
						end if;
						if clk_count = to_unsigned(374,clk_count'length) then
							index <= index + 1;
						end if;
					end if;
					--Send master NACK
					if index = 26 then
						if clk_count = to_unsigned(374,clk_count'length) then
							sda <= 'Z';
							index <= 0;
							state <= ST_DONE;
						end if;								
					end if;
				when ST_DONE =>
					done <= '1';
					if clk_count = to_unsigned(374,clk_count'length) then
						sda <= '0';
						state <= ST_STOP;
					end if;
				when ST_STOP =>
					if clk_count = to_unsigned(124,clk_count'length) then
						sda <= 'Z';
					end if;
					if en = '0' then
						done <= '0';
						state <= ST_IDLE;
					end if;
			end case;
		end if;
	end process;
	
end i2c_reader_rtl;