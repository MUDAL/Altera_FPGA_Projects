library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pack_tb.all;

package body pack_tb is
   function char2slv(char: character) return std_logic_vector is
      variable slv: std_logic_vector(3 downto 0);
   begin
      case char is
         -- 0 to 9
         when '0' => slv := "0000";
         when '1' => slv := "0001";
         when '2' => slv := "0010";
         when '3' => slv := "0011";
         when '4' => slv := "0100";
         when '5' => slv := "0101";
         when '6' => slv := "0110";
         when '7' => slv := "0111";
         when '8' => slv := "1000";
         when '9' => slv := "1001";
         -- A to F
         when 'A' | 'a' => slv := "1010";
         when 'B' | 'b' => slv := "1011";
         when 'C' | 'c' => slv := "1100";
         when 'D' | 'd' => slv := "1101";
         when 'E' | 'e' => slv := "1110";
         when 'F' | 'f' => slv := "1111";
         -- Non-Hex (Don't care)
         when others =>
      end case;
      return slv;
   end function;
   
   function slv2char(slv: std_logic_vector(3 downto 0)) return character is
      variable char: character;
   begin
      case slv is
         -- 0 to 9
         when "0000" => char := '0';
         when "0001" => char := '1';
         when "0010" => char := '2';
         when "0011" => char := '3';
         when "0100" => char := '4';
         when "0101" => char := '5';
         when "0110" => char := '6';
         when "0111" => char := '7';
         when "1000" => char := '8';
         when "1001" => char := '9';
         -- A to F
         when "1010" => char := 'A';
         when "1011" => char := 'B';
         when "1100" => char := 'C';
         when "1101" => char := 'D';
         when "1110" => char := 'E';
         when "1111" => char := 'F';
         -- Don't care
         when others => char := '-';
      end case;
      return char;
   end function;
   
end package body pack_tb;