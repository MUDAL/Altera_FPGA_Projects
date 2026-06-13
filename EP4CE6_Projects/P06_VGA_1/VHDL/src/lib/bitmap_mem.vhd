--MIT License
--
--Copyright (c) 2024 Olaoluwa Raji
--
--Permission is hereby granted, free of charge, to any person obtaining a copy
--of this software and associated documentation files (the "Software"), to deal
--in the Software without restriction, including without limitation the rights
--to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
--copies of the Software, and to permit persons to whom the Software is
--furnished to do so, subject to the following conditions:
--
--The above copyright notice and this permission notice shall be included in all
--copies or substantial portions of the Software.
--
--THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
--OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
--SOFTWARE.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.img_pkg.all;

-- Bitmap memory or Frame buffer: Initialized ...
-- with Memory Initialization File (MIF).

entity bitmap_mem is
  port(clk:       in std_logic;
       en:        in std_logic;
       address:   in std_logic_vector(17 downto 0);
       data_out: out std_logic_vector(0 downto 0));
end bitmap_mem;

architecture bitmap_mem_rtl of bitmap_mem is
   type rom_type is array(0 to ROM_DEPTH - 1) of std_logic_vector(0 downto 0);
   signal rom: rom_type;
   attribute ram_init_file: string;
   attribute ram_init_file of rom: signal is "../src/mif/bitmap.mif"; 
begin
   sync_rom: process(clk)
   begin
      if rising_edge(clk) then
         if en = '1' then
            data_out <= rom(to_integer(unsigned(address)));
         end if;
      end if;
   end process;
end bitmap_mem_rtl;

