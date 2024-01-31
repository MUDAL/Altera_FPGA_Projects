library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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
	constant start_pulse: integer := 899_999;
	constant pre_ack_pulse: integer := 1999;
	constant max_bit_pulse: integer := 2499;
	constant bit_low_pulse: integer := 2499;
	constant ack_period: integer := 7999;
	type one_wire_state is (ST_IDLE, ST_START, ST_PRE_ACK, ST_ACK, 
									ST_SAMPLE, ST_PROCESS_DATA, ST_DONE, ST_CHECK);
	signal state: one_wire_state;
	signal next_state: one_wire_state;
	signal bit_count: integer range 0 to 40; --40 data bits + redundant bit
	signal clks: unsigned(19 downto 0);
	signal clk_stamp: unsigned(19 downto 0);
	signal count_en: std_logic;
	signal data_buff: std_logic_vector(0 to 39);
	signal new_io: std_logic;
	signal old_io: std_logic;
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
	
	state_transition: process(state,en,clks,bit_count,new_io,old_io)
	begin
		next_state <= state;
		case state is
			when ST_IDLE =>
				if en = '1' then
					next_state <= ST_START;
				end if;
			when ST_START =>
				if clks = start_pulse then
					next_state <= ST_PRE_ACK; --Wait for DHT22's response (160uS)
				end if;
			when ST_PRE_ACK =>
				if clks = pre_ack_pulse then
					next_state <= ST_ACK;
				end if;
			when ST_ACK =>	
				if clks = ack_period then
					next_state <= ST_SAMPLE;
				end if;
			when ST_SAMPLE =>
				next_state <= ST_PROCESS_DATA;
			when ST_PROCESS_DATA =>
				if bit_count = 40 then
					next_state <= ST_DONE;
				else
					if new_io = old_io then
						next_state <= ST_SAMPLE;
					end if;
				end if;
			when ST_DONE =>
				if clks = bit_low_pulse then
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
	
	combinational_outputs: process(state,clks,bit_count,check_sum,data_buff)
	begin
		count_en <= '0';
		done <= '0';
		valid <= '0';
		case state is
			when ST_IDLE =>
				if en = '1' then
					count_en <= '1';
				end if;
			when ST_START =>
				if clks /= start_pulse then
					count_en <= '1';
				end if;
			when ST_PRE_ACK =>
				if clks /= pre_ack_pulse then
					count_en <= '1';
				end if;
			when ST_ACK =>
				if clks /= ack_period then
					count_en <= '1';
				end if;
			when ST_SAMPLE =>
				count_en <= '1';
			when ST_PROCESS_DATA =>
				if bit_count /= 40 then
					count_en <= '1';
				end if;
			when ST_DONE =>
				count_en <= '1';
				done <= '1';
			when ST_CHECK =>
				if check_sum = unsigned(data_buff(32 to 39)) then
					valid <= '1';
				end if;
		end case;
	end process;
	
	registered_outputs: process(rst_n,clk)
	begin
		if rst_n = '0' then
			io <= 'Z';
			bit_count <= 0;
			clk_stamp <= (others => '0');
			data_buff <= (others => '0');
			new_io <= '0';
			old_io <= '0';
		elsif rising_edge(clk) then
			case state is
				when ST_IDLE =>
					if en = '1' then
						io <= '0';
					end if;
				when ST_START =>
					if clks = start_pulse then
						io <= 'Z';
					end if;
				when ST_SAMPLE =>
					new_io <= io;
				when ST_PROCESS_DATA =>
					if new_io = '1' and old_io = '0' then
						old_io <= '1';
						clk_stamp <= clks;
					elsif new_io = '0' and old_io = '1' then
						if clks - clk_stamp >= max_bit_pulse then
							data_buff(bit_count) <= '1';
						else
							data_buff(bit_count) <= '0';
						end if;
						bit_count <= bit_count + 1;
						old_io <= '0';						
					end if;			
				when ST_DONE =>
					bit_count <= 0;
					if clks >= bit_low_pulse then
						io <= 'Z'; --Release one-wire bus
					end if;
				when others =>
			end case;
		end if;
	end process;
	
	output_data_selector: process(param,data_buff)
	begin
		if param = '0' then
			data_out <= data_buff(0 to 15); --Humidity
		else
			data_out <= data_buff(16 to 31); --Temperature
		end if;
	end process;
	
	--Check sum = Humidity integral + Humidity decimal +
	--            Temperature integral + Temperature decimal
	check_sum_calc: check_sum <= unsigned(data_buff(0 to 7))   + 
										  unsigned(data_buff(8 to 15))  +
										  unsigned(data_buff(16 to 23)) +
										  unsigned(data_buff(24 to 31));
	
end architecture one_wire_rtl;