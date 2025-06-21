library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Free running counter/timer for periodically triggering other modules.

entity counter is
   generic(DELAY_CLKS: integer := 99_999); -- Delay
   port(rst_n: in std_logic;
        clk:   in std_logic;
        start: in std_logic;
        tick: out std_logic);
end counter;

architecture counter_rtl of counter is
   signal cnt_reg:  integer range 0 to DELAY_CLKS + 1;
   signal cnt_next: integer range 0 to DELAY_CLKS + 1;
   signal cnt_done: std_logic;
begin
   cnt_next <= cnt_reg + 1 when start = '1' and cnt_reg < DELAY_CLKS else 0;
   
   cnt_done <= '1' when cnt_reg = DELAY_CLKS else '0';
   
   -- Output
   tick <= cnt_done;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         cnt_reg <= 0;
      elsif rising_edge(clk) then
         cnt_reg <= cnt_next;
      end if;
   end process;   
end counter_rtl;