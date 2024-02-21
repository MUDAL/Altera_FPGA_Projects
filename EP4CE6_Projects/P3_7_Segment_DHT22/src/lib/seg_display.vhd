library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

--Module for driving the 7-segment display

--Details:
--1. "Active low" reset and 7-segment display
--2. 50MHz system clock
--3. seg: 7-bit output for the a digit of the 7-segment display
--4. dp: decimal point
--5. bcd: BCD equivalent of DHT22 sensor's data to be displayed

--NB: Place value					| Digit Index
--			Celsius/Humidity		|		0
--			Floating-point			|		1
--			Units						|		2
--			Tens						|		3

entity seg_display is
	port(rst_n: in std_logic;
		  clk: in std_logic;
		  bcd: in std_logic_vector(11 downto 0);
		  param: in std_logic; --Display celsius(C) or humidity(H)
		  dp: out std_logic;
		  seg: out std_logic_vector(6 downto 0);
		  sel: out std_logic_vector(3 downto 0));
end seg_display;

architecture seg_display_rtl of seg_display is
	constant TIME_TO_SWITCH_DIGIT: integer := 9_999;
	constant ROM_CELSIUS: integer := 10; --ROM address to display Celsius(C)
	constant ROM_HUMID: integer := 11; --ROM address to display Humidity(H)
	type digit_type is array(0 to 3) of std_logic_vector(3 downto 0);
	signal digit: digit_type;
	signal digit_index: unsigned(2 downto 0);
	signal count: unsigned(15 downto 0);
	signal shift_reg: std_logic_vector(3 downto 0);
begin
	--Enables time-based digit switching
	digit_switching_counter: process(rst_n,clk)
	begin
		if rst_n = '0' then
			count <= (others => '0');
		elsif rising_edge(clk) then
			if count = to_unsigned(TIME_TO_SWITCH_DIGIT,count'length) then 
				count <= (others => '0');
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	
	--Select a digit using the switching counter and shift register
	sel <= shift_reg;
	shift_register: process(rst_n,clk)
	begin
		if rst_n = '0' then
			shift_reg <= "1110";
		elsif rising_edge(clk) then
			if count = to_unsigned(TIME_TO_SWITCH_DIGIT,count'length) then
				shift_reg(3 downto 1) <= shift_reg(2 downto 0);
				shift_reg(0) <= shift_reg(3);
			end if;
		end if;
	end process;

	--Counter to select which digit should be loaded into the ROM
	digit_index_counter: process(rst_n,clk)
	begin
		if rst_n = '0' then
			digit_index <= (others => '0');
		elsif rising_edge(clk) then
			if count = to_unsigned(TIME_TO_SWITCH_DIGIT,count'length) then
				if digit_index = to_unsigned(3,digit_index'length) then
					digit_index <= (others => '0');
				else
					digit_index <= digit_index + 1;
				end if;
			end if;
		end if;	
	end process;
	
	--Logic to trigger (active low) the decimal point for the units digit
	with digit_index select
		dp <= '0' when to_unsigned(2,digit_index'length),
				'1' when others;
	-- Rightmost segment = 'C' if 'param = 1', else it equals 'H'
	with param select
		digit(0) <= std_logic_vector(to_unsigned(ROM_CELSIUS,digit(0)'length)) when '1',
					   std_logic_vector(to_unsigned(ROM_HUMID,digit(0)'length)) when others;
	--Other place values
	digit(1) <= bcd(3 downto 0);
	digit(2) <= bcd(7 downto 4);
	digit(3) <= bcd(11 downto 8);
	
	--Converts a digit's current value to signals to drive the display
	rom: entity work.seg_rom(seg_rom_rtl)
	port map(addr => digit(to_integer(digit_index)), data_out => seg);
	
end seg_display_rtl;
