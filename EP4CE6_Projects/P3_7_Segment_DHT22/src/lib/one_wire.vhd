library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Module to read data from DHT22 sensor via one-wire protocol.
-- From the DHT22 datasheet, there are 40 data bits that can be  
-- read from the sensor. From the most significant byte to the   
-- least significant byte, the following parameters are read  
-- respectively: Humidity integral, Humidity decimal,   
-- Temperature integral, Temperature decimal, and checksum.

-- Final data is read by dividing 16-bit humidity or temperature data  
-- by 10. Data validity is checked using the checksum byte.


entity one_wire is
	port(rst_n: in std_logic;
		  clk: in std_logic;
		  en: in std_logic;
		  param: in std_logic; --Select Celsius or Humidity
		  io: inout std_logic; --One wire data line (High Impedance)
		  data_out: out std_logic_vector(15 downto 0);
		  done: out std_logic;
		  valid: out std_logic);
end one_wire;

architecture one_wire_rtl of one_wire is
	--Start pulse: about 18ms
	--Pre-ack pulse: about 40uS
	--Bit low pulse: Every data bit starts with a low pulse of about 50uS
	--Max bit pulse(M): Bit = '1' if high pulse of data bit exceeds M, else '0'.
	--ACK period: about 160uS
	--Bit 0: 26-28uS after initial 50uS for each DHT22 bit
	--Bit 1: 69-71uS after initial 50uS for each DHT22 bit
	--FSM 'WAIT' states are added to ensure counters are properly ........
	--synchronously cleared before they're used in a new state.
	constant START_PULSE: integer := 899_999;
	constant PRE_ACK_PULSE: integer := 1999;
	constant MAX_BIT_PULSE: integer := 2499;
	constant BIT_LOW_PULSE: integer := 2499;
	constant ACK_PERIOD: integer := 7999;
	type one_wire_state is (ST_IDLE, ST_START, ST_WAIT_1, ST_PRE_ACK, ST_WAIT_2,
									ST_ACK, ST_WAIT_3, ST_SAMPLE, ST_PROCESS_DATA, 
									ST_WAIT_4, ST_DONE, ST_CHECK);
	signal state: one_wire_state;
	signal next_state: one_wire_state;
	signal io_next: std_logic;
	signal io_reg: std_logic;
	signal bit_count: integer range 0 to 40; --40 data bits + redundant bit
	signal bit_count_reg: integer range 0 to 40;
	signal clks: unsigned(19 downto 0);
	signal clk_stamp: unsigned(19 downto 0);
	signal clk_stamp_reg: unsigned(19 downto 0);
	signal count_en: std_logic;
	signal data_buff: std_logic_vector(0 to 39);
	signal data_buff_reg: std_logic_vector(0 to 39);
	signal new_io: std_logic;
	signal new_io_reg: std_logic;
	signal old_io: std_logic;
	signal old_io_reg: std_logic;
	signal check_sum: unsigned(7 downto 0);
begin
	clock_counter: process(rst_n,clk)
	begin
		if rst_n = '0' then
			clks <= (others => '0');
		elsif rising_edge(clk) then
			if count_en = '1' then
				clks <= clks + 1;
			else
				clks <= (others => '0');
			end if;
		end if;
	end process;	
	
	next_state_logic: process(state,en,clks,bit_count_reg,new_io_reg,old_io_reg)
	begin
		next_state <= state;
		case state is
			when ST_IDLE =>
				if en = '1' then
					next_state <= ST_START;
				end if;
			when ST_START =>
				if clks = START_PULSE then
					next_state <= ST_WAIT_1;
				end if;
			when ST_WAIT_1 =>
				next_state <= ST_PRE_ACK;
			when ST_PRE_ACK =>
				if clks = PRE_ACK_PULSE then
					next_state <= ST_WAIT_2;
				end if;
			when ST_WAIT_2 =>
				next_state <= ST_ACK;
			when ST_ACK =>	
				if clks = ACK_PERIOD then
					next_state <= ST_WAIT_3;
				end if;
			when ST_WAIT_3 =>
				next_state <= ST_SAMPLE;
			when ST_SAMPLE =>
				next_state <= ST_PROCESS_DATA;
			when ST_PROCESS_DATA =>
				if bit_count_reg = 40 then
					next_state <= ST_WAIT_4;
				else
					if new_io_reg = old_io_reg then
						next_state <= ST_SAMPLE;
					end if;
				end if;
			when ST_WAIT_4 =>
				next_state <= ST_DONE;
			when ST_DONE =>
				if clks = BIT_LOW_PULSE then
					next_state <= ST_CHECK;
				end if;			
			when ST_CHECK =>
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
	
	moore_outputs: process(state,io,new_io_reg)
	begin
		new_io <= new_io_reg;
		case state is
			when ST_IDLE =>
				count_en <= '0';
				done <= '0';
			when ST_START | ST_PRE_ACK | ST_ACK | ST_PROCESS_DATA =>
				count_en <= '1';
				done <= '0';
			when ST_SAMPLE => 
				new_io <= io;
				count_en <= '1';
				done <= '0';
			when ST_DONE =>
				count_en <= '1';
				done <= '1';
			when ST_CHECK =>
				count_en <= '0';
				done <= '1';
			when others => --WAIT states (1 cycle to allow 'clks' to be cleared)
				count_en <= '0';
				done <= '0';
		end case;
	end process;
	
	mealy_outputs: process(state,en,clks,io_reg,bit_count_reg,clk_stamp_reg, 
								  data_buff_reg,new_io_reg,old_io_reg,check_sum)
	begin
		io_next <= io_reg;
		bit_count <= bit_count_reg;
		clk_stamp <= clk_stamp_reg;
		data_buff <= data_buff_reg;
		old_io <= old_io_reg;
		valid <= '0';
		case state is
			when ST_IDLE =>
				if en = '1' then
					io_next <= '0';
				end if;
			when ST_START =>
				if clks = START_PULSE then
					io_next <= '1';
				end if;
			when ST_PROCESS_DATA =>
				if new_io_reg = '1' and old_io_reg = '0' then
					old_io <= '1';
					clk_stamp <= clks;
				elsif new_io_reg = '0' and old_io_reg = '1' then
					if (clks - clk_stamp_reg) >= MAX_BIT_PULSE then
						data_buff(bit_count_reg) <= '1';
					else
						data_buff(bit_count_reg) <= '0';
					end if;
					bit_count <= bit_count_reg + 1;
					old_io <= '0';						
				end if;			
			when ST_DONE =>
				bit_count <= 0;
				if clks = BIT_LOW_PULSE then
					io_next <= '1'; --Release one-wire data line
				end if;
			when ST_CHECK =>
				if check_sum = unsigned(data_buff_reg(32 to 39)) then
					valid <= '1';
				end if;			
			when others =>
		end case;	
	end process;
	
	registered_outputs: process(rst_n,clk)
	begin
		if rst_n = '0' then
			io_reg <= '1';
			bit_count_reg <= 0;
			clk_stamp_reg <= (others => '0');
			data_buff_reg <= (others => '0');
			new_io_reg <= '0';
			old_io_reg <= '0';
		elsif rising_edge(clk) then
			io_reg <= io_next;
			bit_count_reg <= bit_count;
			clk_stamp_reg <= clk_stamp;
			data_buff_reg <= data_buff;
			new_io_reg <= new_io;
			old_io_reg <= old_io;		
		end if;
	end process;
	
	--io = 'Z' (High impedance) implies release of one-wire data line
	tristate_buffer: process(io_reg)
	begin
		if io_reg = '1' then
			io <= 'Z';
		else
			io <= '0';
		end if;
	end process;
	
	output_data_selector: process(param,data_buff_reg)
	begin
		if param = '0' then
			data_out <= data_buff_reg(0 to 15); --Humidity
		else
			data_out <= data_buff_reg(16 to 31); --Temperature
		end if;
	end process;
	
	--Check sum = Humidity integral + Humidity decimal +
	--            Temperature integral + Temperature decimal
	check_sum_calc: check_sum <= unsigned(data_buff_reg(0 to 7))   + 
										  unsigned(data_buff_reg(8 to 15))  +
										  unsigned(data_buff_reg(16 to 23)) +
										  unsigned(data_buff_reg(24 to 31));
	
end architecture one_wire_rtl;