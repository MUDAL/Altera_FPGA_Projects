library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Module to implement the RAM section of a FIFO buffer.

-- The "Intel Quartus Prime User Guide: Design Recommendations"  
-- is referenced in order to correctly infer a RAM. The RAM of    
-- interest is the "Single-Clock, Simple Dual-Port Synchronous  
-- RAM with Old Data Read-During-Write Behaviour".  

entity fifo_ram is
   generic(ADDR_WIDTH: integer := FIFO_ADDR_WIDTH;
           DATA_WIDTH: integer := FIFO_DATA_WIDTH);
           
   port(clk:          in std_logic;
        write_enable: in std_logic;
        write_addr:   in std_logic_vector(ADDR_WIDTH - 1 downto 0);
        read_addr:    in std_logic_vector(ADDR_WIDTH - 1 downto 0);
        data_in:      in std_logic_vector(DATA_WIDTH - 1 downto 0);
        data_out:    out std_logic_vector(DATA_WIDTH - 1 downto 0));
end fifo_ram;

architecture fifo_ram_rtl of fifo_ram is
   type ram_t is array(0 to 2**ADDR_WIDTH - 1) of 
        std_logic_vector(DATA_WIDTH - 1 downto 0);
   -------------------------------------------------- 
   signal ram: ram_t;
begin
   sync_ram: process(clk)
   begin
      if rising_edge(clk) then
         if write_enable = '1' then
            ram(to_integer(unsigned(write_addr))) <= data_in;
         end if;
         data_out <= ram(to_integer(unsigned(read_addr)));
      end if;
   end process;
end fifo_ram_rtl;
