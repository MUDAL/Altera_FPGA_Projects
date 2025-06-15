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

