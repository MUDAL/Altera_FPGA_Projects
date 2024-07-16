library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Font module: The fonts are stored in a LUT-based ROM.

entity font_logic is
   generic(X_POS:  integer := 50;
           Y_POS:  integer := 50;
           X_STRIDE: integer := 2;
           Y_STRIDE: integer := 2);
   port(pixel_x: in std_logic_vector(9 downto 0);
        pixel_y: in std_logic_vector(9 downto 0);
        rom_addr: in std_logic_vector(DIG_ADDR_WIDTH - 1 downto 0);
        font: out std_logic_vector(2 downto 0));
end font_logic;

architecture font_logic_rtl of font_logic is
   signal pix_x: unsigned(9 downto 0);
   signal pix_y: unsigned(9 downto 0);
   signal addr: integer range 0 to ROM_DEPTH - 1;
begin
   pix_x <= unsigned(pixel_x);
   pix_y <= unsigned(pixel_y);
   addr <= to_integer(unsigned(rom_addr));
   
   font_bit: process(addr,pix_x,pix_y)
   begin
      font <= (others => '0');
      for m in 0 to ROWS - 1 loop
         for n in 0 to COLS - 1 loop
            if pix_x >= (X_POS + X_STRIDE * n) and
               pix_y >= (Y_POS + Y_STRIDE * m) and
               pix_x <  (X_POS + X_STRIDE * n + X_STRIDE) and
               pix_y <  (Y_POS + Y_STRIDE * m + Y_STRIDE) then
               -- Output
               font(2) <= ROM(addr)(m)(n);
               font(1) <= ROM(addr)(m)(n);
               font(0) <= ROM(addr)(m)(n);
            end if;
         end loop;
      end loop;
   end process;   
end font_logic_rtl;
