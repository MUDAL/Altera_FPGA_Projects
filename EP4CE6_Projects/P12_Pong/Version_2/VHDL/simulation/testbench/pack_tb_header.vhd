library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package pack_tb is
   constant CLK_PERIOD: time := 20 ns;
   
   -- Function (character to std_logic_vector(slv))
   function char2slv(char: character) return std_logic_vector;
   
   -- Function (std_logic_vector(slv) to character)
   function slv2char(slv: std_logic_vector(3 downto 0)) return character;
end package pack_tb;