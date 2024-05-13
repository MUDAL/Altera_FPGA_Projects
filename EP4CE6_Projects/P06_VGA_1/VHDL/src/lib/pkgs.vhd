library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Image dimensions

package img_pkg is
   constant IMG_WIDTH: integer := 398;
   constant IMG_HEIGHT: integer := 438;
   constant ROM_DEPTH: integer := IMG_WIDTH * IMG_HEIGHT;   
end package img_pkg;