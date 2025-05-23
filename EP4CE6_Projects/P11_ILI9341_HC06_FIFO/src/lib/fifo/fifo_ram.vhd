library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module to implement the RAM section of a FIFO buffer.

-- The "Intel Quartus Prime User Guide: Design Recommendations"  
-- is referenced in order to correctly infer a RAM. The RAM of    
-- interest is the "Single-Clock, Simple Dual-Port Synchronous  
-- RAM with Old Data Read-During-Write Behaviour".  

entity fifo_ram is
   generic(AW: integer := 6;  -- Address Width (AW)
           DW: integer := 2); -- Data Width (DW)
           
   port(clk:    in std_logic;
        w_en:   in std_logic;
        w_addr: in std_logic_vector(AW - 1 downto 0);
        r_addr: in std_logic_vector(AW - 1 downto 0);
        d_in:   in std_logic_vector(DW - 1 downto 0);
        d_out: out std_logic_vector(DW - 1 downto 0));
end fifo_ram;

architecture fifo_ram_rtl of fifo_ram is
   type ram_t is array(0 to 2**AW - 1) of 
        std_logic_vector(DW - 1 downto 0);
   -------------------------------------------------- 
   signal ram: ram_t;
begin
   sync_ram: process(clk)
   begin
      if rising_edge(clk) then
         if w_en = '1' then
            ram(to_integer(unsigned(w_addr))) <= d_in;
         end if;
         d_out <= ram(to_integer(unsigned(r_addr)));
      end if;
   end process;
end fifo_ram_rtl;
