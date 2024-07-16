library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Bitmap memory: Initialized with Memory Initialization File.
-- The bitmap memory serves as a synchronous ROM that is based ...
-- on the FPGA's Block RAMs.  

entity bitmap_memory is
   generic(MIF_FILE: string(1 to MIF_LEN) := GAME_MENU_MIF;
           MEM_DEPTH: integer := 14910);
   port(clk: in std_logic;
        addr: in std_logic_vector(log_base2(MEM_DEPTH) downto 0);
        data_out: out std_logic_vector(0 downto 0));
end bitmap_memory;

architecture bitmap_memory_rtl of bitmap_memory is
   type rom_type is array(0 to MEM_DEPTH - 1) of std_logic_vector(0 downto 0);
   signal rom: rom_type;
   attribute ram_init_file: string;
   attribute ram_init_file of rom: signal is MIF_FILE; 
begin
   sync_rom: process(clk)
   begin
      if rising_edge(clk) then
         data_out <= rom(to_integer(unsigned(addr)));
      end if;
   end process;
end bitmap_memory_rtl;

