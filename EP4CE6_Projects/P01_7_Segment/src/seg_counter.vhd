library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library altera_mf;
use altera_mf.all;

--4-bit generic counter for each digit or segment ...
--of the 4-digit 7 segment display

entity seg_counter is
   generic(PLACE_VALUE: integer := 1);
   port(rst_n: in std_logic;
        clk: in std_logic;
        en: in std_logic;
        digit_out: out std_logic_vector(3 downto 0));
end seg_counter;

architecture seg_counter_rtl of seg_counter is
   signal clks: unsigned(23 downto 0);
   signal digit: unsigned(3 downto 0);
   signal clk_out: std_logic;
begin
   --'areset' is active high
   clock_10KHz: entity altera_mf.pll(syn)
   port map(areset => not rst_n, inclk0 => clk, c0 => clk_out);  
  
   digit_out <= std_logic_vector(digit);
   process(rst_n,clk_out)
   begin
      if rst_n = '0' then
         clks <= (others => '0');
         digit <= (others => '0');
      elsif rising_edge(clk_out) then
         if clks = to_unsigned(PLACE_VALUE * 10_000 - 1,clks'length) then
            clks <= (others => '0');
            if digit = to_unsigned(9,digit'length) then
               digit <= (others => '0');
            else
               digit <= digit + 1;
            end if;
         else
            clks <= clks + 1;
         end if;
      end if;
   end process;
   
end seg_counter_rtl;
