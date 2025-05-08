library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

package pack_tb is
   constant CLK_PERIOD: time := 10 ns;
   -- Some simulation parameters for the SDRAM model.
   -- Smaller values are used to quicken the simulation.
   constant INIT_DELAY: real    := 20.0; -- ns
   constant MAX_ROWS:   integer := SDRAM_MAX_ROWS;
   constant MAX_COLS:   integer := SDRAM_MAX_COLS;
   
   -- Function (character to std_logic_vector(slv))
   function char2slv(char: character) return std_logic_vector;
   
   -- Function (std_logic_vector(slv) to character)
   function slv2char(slv: std_logic_vector(3 downto 0)) return character;
   
   type memory_t is array(0 to MAX_ROWS - 1, 0 to MAX_COLS - 1) 
                 of std_logic_vector(DATA_WIDTH - 1 downto 0);
   
   type debug_t is (SDRAM_DEBUG_ON, SDRAM_DEBUG_OFF); 
end package pack_tb;