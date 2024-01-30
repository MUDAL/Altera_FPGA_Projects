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
		  done: out std_logic);
end one_wire;

architecture one_wire_rtl of one_wire is
	--Start pulse: about 18ms
	--Pre-ack pulse: about 40uS
	--Bit low pulse: about 50uS
	--ACK period: about 160uS
	--Bit 0: 26-28uS after initial 50uS for each DHT22 bit
	--Bit 1: 69-71uS after initial 50uS for each DHT22 bit
	constant start_pulse: integer := 899_999;
	constant pre_ack_pulse: integer := 1999;
	constant bit_low_pulse: integer := 2499;
	constant ack_period: integer := 7999;
	type one_wire_state is (ST_IDLE, ST_START, ST_PRE_ACK, ST_ACK, 
									ST_SAMPLE, ST_PROCESS_DATA, ST_DONE, ST_CHECK);
	signal state: one_wire_state;
	signal next_state: one_wire_state;
	signal bit_count: integer range 0 to 40; --40 data bits + redundant bit
	signal clks: unsigned(19 downto 0);
	signal clk_stamp: unsigned(19 downto 0);
	signal cnt_en: std_logic;
	signal one_wire_buff: std_logic_vector(0 to 39);
	signal read_io: std_logic;
	signal old_io_state: std_logic;
begin
	clock_counter: process(rst_n,clk)
	begin
		if rst_n = '0' then
			clks <= (others => '0');
		elsif rising_edge(clk) then
			if cnt_en = '1' then
				clks <= clks + 1;
			else
				clks <= (others => '0');
			end if;
		end if;
	end process;	
	
	state_transition: process(state,en,clks,bit_count,read_io,old_io_state)
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
					if read_io = old_io_state then
						next_state <= ST_SAMPLE;
					end if;
				end if;
			when ST_DONE =>
				if clks = bit_low_pulse then
					next_state <= ST_CHECK;
				end if;			
			when ST_CHECK =>
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

	data_selector: process(param,one_wire_buff)
	begin
		if param = '0' then
			data_out <= one_wire_buff(0 to 15);
		else
			data_out <= one_wire_buff(16 to 31);
		end if;
	end process;
	
	combinational_output: process(state,clks,bit_count)
	begin
		cnt_en <= '0';
		done <= '0';
		case state is
			when ST_IDLE =>
				if en = '1' then
				end if;
			when ST_START =>
				if clks /= start_pulse then
					cnt_en <= '1';
				end if;
			when ST_PRE_ACK =>
				if clks /= pre_ack_pulse then
					cnt_en <= '1';
				end if;
			when ST_ACK | ST_SAMPLE =>
				cnt_en <= '1';
			when ST_PROCESS_DATA =>
				if bit_count /= 40 then
					cnt_en <= '1';
				end if;
			when ST_DONE =>
				cnt_en <= '1';
				done <= '1';
			when others =>
		end case;
	end process;
	
	registered_outputs: process(rst_n,clk)
	begin
		if rst_n = '0' then
			io <= 'Z';
			bit_count <= 0;
			one_wire_buff <= (others => '0');
			read_io <= '0';
			old_io_state <= '0';
			clk_stamp <= (others => '0');
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
					read_io <= io;
				when ST_PROCESS_DATA =>
					if read_io = '1' and old_io_state = '0' then
						old_io_state <= '1';
						clk_stamp <= clks;
					elsif read_io = '0' and old_io_state = '1' then
						if clks - clk_stamp >= 2499 then
							one_wire_buff(bit_count) <= '1';
						else
							one_wire_buff(bit_count) <= '0';
						end if;
						bit_count <= bit_count + 1;
						old_io_state <= '0';						
					end if;			
				when ST_DONE =>
					bit_count <= 0;
					if clks >= bit_low_pulse then
						io <= 'Z'; --Release one-wire bus
					end if;
				when ST_CHECK =>
				when others =>
			end case;
		end if;
	end process;
	
end architecture one_wire_rtl;