library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.all;

--4-bit generic counter for each digit or segment ...
--of the 4-digit 7 segment display

entity seg_counter is
	generic(place_value: integer := 1);
	port(rst_n: in std_logic;
		  clk: in std_logic;
        en: in std_logic;
        count_out: out std_logic_vector(3 downto 0));
end seg_counter;

architecture seg_counter_rtl of seg_counter is
	signal clk_counter: unsigned(23 downto 0);
	signal count: unsigned(3 downto 0);
	signal clk_out: std_logic;
begin
	--'areset' is active high
	clock_10KHz: entity altera_mf.pll(syn)
	port map(areset => not rst_n, inclk0 => clk, c0 => clk_out);  
  
	count_out <= std_logic_vector(count);
	process(rst_n,clk_out)
	begin
		if rst_n = '0' then
			clk_counter <= (others => '0');
			count <= (others => '0');
		elsif rising_edge(clk_out) then
			if clk_counter = to_unsigned(place_value * 10_000 - 1,clk_counter'length) then
				clk_counter <= (others => '0');
				if count = to_unsigned(9,count'length) then
					count <= (others => '0');
				else
					count <= count + 1;
				end if;
			else
				clk_counter <= clk_counter + 1;
			end if;
		end if;
	end process;
	
end seg_counter_rtl;
