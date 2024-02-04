library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Decimal to BCD converter  
--NB: I believe there are more efficient algorithms (e.g. the Double Dabble) ...
-- that can achieve this task and I'll encourage you to try them out.

entity dec_to_bcd is
	generic(data_width: integer := 24);
	port(rst_n: in std_logic;
		  clk: in std_logic;
		  en: in std_logic;
		  dec: in std_logic_vector(data_width - 1 downto 0);
		  bcd: out std_logic_vector(15 downto 0);
		  done: out std_logic);
end dec_to_bcd;

architecture dec_to_bcd_rtl of dec_to_bcd is
	--Maximum pulse width = 23200uS (dMax x c = 400 x 58)
	--dMax = maximum distance = 400cm and c = constant (Check datasheet)
	--Distance = pulse width / 58
	--To avoid division and extensive FPGA resource utilization, 
	--I have taken 1/58 as 172. 
	--Maximum distance is approximately = 23200 * 172 = 3,990,400.
	--Using the value above (3,990,400), the following place values will be 
	--required to display an approximate distance in centimeters for all 
	--readings:
	--1. Millionth 2. Hundred thousands 3. Ten thousands and 4. Thousands.
	--Hundreds, Tens, Units, and Tenths of the display are respectively 
	--scaled to the place values above using the two constants below:  
	constant FACTOR: integer := 10000;
	constant FACTOR_DIV_10: integer := FACTOR / 10;
	type fsm is (ST_IDLE, ST_CALC, ST_DONE);
	signal state: fsm;
	signal next_state: fsm;
	signal num_reg: unsigned(data_width - 1 downto 0);
	signal num: unsigned(data_width - 1 downto 0);
	signal hundreds_reg: unsigned(3 downto 0);
	signal hundreds: unsigned(3 downto 0);
	signal tens_reg: unsigned(3 downto 0);
	signal tens: unsigned(3 downto 0);
	signal unit_reg: unsigned(3 downto 0);
	signal unit: unsigned(3 downto 0);
	signal tenths_reg: unsigned(3 downto 0);
	signal tenths: unsigned(3 downto 0);
	signal bcd_reg: unsigned(15 downto 0);
	signal bcd_next: unsigned(15 downto 0);
	signal done_reg: std_logic;
	signal done_next: std_logic;
begin
	next_state_logic: process(state,en,num_reg)
	begin
		next_state <= state;
		case state is
			when ST_IDLE =>
				if en = '1' then
					next_state <= ST_CALC;
				end if;
			when ST_CALC =>
				if num_reg < to_unsigned(FACTOR_DIV_10,num_reg'length) then
					next_state <= ST_DONE;
				end if;
			when ST_DONE =>
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
  
	combinational_logic: 
	process(state,en,dec,num_reg,hundreds_reg,tens_reg,unit_reg,
			  tenths_reg,bcd_reg,done_reg)
	begin
		hundreds <= hundreds_reg;
		tens <= tens_reg;
		unit <= unit_reg;
		tenths <= tenths_reg;
		num <= num_reg;
		bcd_next <= bcd_reg;
		done_next <= done_reg;
		case state is
			when ST_IDLE =>
				hundreds <= (others => '0');
				tens <= (others => '0');
				unit <= (others => '0');
				tenths <= (others => '0');
				num <= unsigned(dec);				
			when ST_CALC =>
				if num_reg >= to_unsigned(100 * FACTOR,num_reg'length) then
					hundreds <= hundreds_reg + 1;
					num <= num_reg - 100 * FACTOR;
				elsif num_reg >= to_unsigned(10 * FACTOR,num_reg'length) and 
						num_reg < to_unsigned(100 * FACTOR,num_reg'length) then
					tens <= tens_reg + 1;
					num <= num_reg - 10 * FACTOR;
				elsif num_reg >= to_unsigned(FACTOR,num_reg'length) and
						num_reg < to_unsigned(10 * FACTOR,num_reg'length) then
					unit <= unit_reg + 1;
					num <= num_reg - FACTOR;
				elsif num_reg >= to_unsigned(FACTOR_DIV_10,num_reg'length) and
						num_reg < to_unsigned(FACTOR,num_reg'length) then
						tenths <= tenths_reg + 1;
						num <= num_reg - FACTOR_DIV_10;
				else
					bcd_next(15 downto 12) <= hundreds_reg;
					bcd_next(11 downto 8) <= tens_reg;
					bcd_next(7 downto 4) <= unit_reg;
					bcd_next(3 downto 0) <= tenths_reg;
					done_next <= '1';
				end if;
			when ST_DONE =>
				if en = '0' then
					done_next <= '0';
				end if;
		end case;
	end process;
  
	bcd <= std_logic_vector(bcd_reg);
	done <= done_reg;
	registered_output: process(rst_n,clk)
	begin
		if rst_n = '0' then
			hundreds_reg <= (others => '0');
			tens_reg <= (others => '0');
			unit_reg <= (others => '0');
			tenths_reg <= (others => '0');
			num_reg <= (others => '0');
			bcd_reg <= (others => '0');
			done_reg <= '0';	
		elsif rising_edge(clk) then
			hundreds_reg <= hundreds;
			tens_reg <= tens;
			unit_reg <= unit;
			tenths_reg <= tenths;
			num_reg <= num;
			bcd_reg <= bcd_next;
			done_reg <= done_next;
		end if;
	end process;
  
end dec_to_bcd_rtl;
