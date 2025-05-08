library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Simple frequency divider.
  
-- Limitation:
-- In this design, the clock divisor can only be a multiple of 2.

entity clock_divider is
   generic(DIVISOR: integer := CAM_CLK_DIVISOR);
   port(rst_n:      in std_logic;
        clk:        in std_logic;
        clk_out:   out std_logic;
        pos_edge:  out std_logic);
end clock_divider;

architecture clock_divider_rtl of clock_divider is
   constant MAX_COUNT: integer := DIVISOR / 2;
   ------------------------------------------------------------------
   signal clk_reg:       std_logic;
   signal clk_next:      std_logic;
   signal pos_edge_reg:  std_logic;
   signal pos_edge_next: std_logic;
   signal count_reg:     integer range 0 to MAX_COUNT;
   signal count_next:    integer range 0 to MAX_COUNT; 
begin   
   -- Adder logic
   count_next <= count_reg + 1 when count_reg /= MAX_COUNT - 1 else 0;  
   
   -- Logic to toggle output clock
   clk_next <= not clk_reg when count_reg = 0 else clk_reg;
   
   -- Rising edge detection
   pos_edge_next <= '1' when clk_next = '1' and clk_reg = '0'
            else    '0';
   
   -- Buffered outputs
   clk_out  <= clk_reg;
   pos_edge <= pos_edge_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         clk_reg      <= '0';
         count_reg    <=  0;
         pos_edge_reg <= '0';
      elsif rising_edge(clk) then
         clk_reg      <= clk_next;
         count_reg    <= count_next;
         pos_edge_reg <= pos_edge_next;
      end if;
   end process;
end clock_divider_rtl;