library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Font module: The numeric fonts are stored in a LUT-based ROM.
-- Each font is housed in a tile containing smaller boxes.
-- The width or height of each box in a tile is called a "stride."

entity font_logic is
   generic(X_POS:    integer := 50;
           Y_POS:    integer := 50;
           X_STRIDE: integer := 2;
           Y_STRIDE: integer := 2);
           
   port(rst_n:    in std_logic;
        clk:      in std_logic;
        pixel_x:  in std_logic_vector(9 downto 0);
        pixel_y:  in std_logic_vector(9 downto 0);
        rom_addr: in std_logic_vector(DIG_ADDR_WIDTH - 1 downto 0);
        font:    out std_logic_vector(2 downto 0));
end font_logic;

architecture font_logic_rtl of font_logic is
   signal pix_x:        unsigned(9 downto 0);
   signal pix_y:        unsigned(9 downto 0);
   signal addr:         integer range 0 to ROM_DEPTH - 1;
   signal in_tile:      std_logic;
   signal font_reg:     std_logic;
   signal font_next:    std_logic;
   -- Stride counters
   signal xstride_reg:  integer range 0 to COLS - 1;  
   signal xstride_next: integer range 0 to COLS - 1;
   signal ystride_reg:  integer range 0 to ROWS - 1;
   signal ystride_next: integer range 0 to ROWS - 1;
begin
   pix_x <= unsigned(pixel_x);
   pix_y <= unsigned(pixel_y);
   addr  <= to_integer(unsigned(rom_addr));
   
   -- Logic to detect whether we're in the font's tile or not
   in_tile <= '1' when pix_x >= X_POS
                   and pix_x <  X_POS + X_STRIDE * COLS
                   and pix_y >= Y_POS
                   and pix_y <  Y_POS + Y_STRIDE * ROWS
      else    '0';
   
   -- Logic for column/horizontal and row/vertical stride counters
   xstride_next <= xstride_reg + 1 when pix_x = X_POS + X_STRIDE * (xstride_reg + 1)
           else    xstride_reg;

   ystride_next <= ystride_reg + 1 when pix_y = Y_POS + Y_STRIDE * (ystride_reg + 1)
           else    ystride_reg;          
   
   -- Font bit
   font_next <= ROM(addr)(ystride_next)(xstride_next) when in_tile = '1' else '0';
   
   -- Buffered output
   font <= (others => font_reg);
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         font_reg    <= '0';
         xstride_reg <=  0;
         ystride_reg <=  0;
      elsif rising_edge(clk) then
         font_reg    <= font_next;
         xstride_reg <= xstride_next;
         ystride_reg <= ystride_next;
      end if;
   end process;
     
end font_logic_rtl;
