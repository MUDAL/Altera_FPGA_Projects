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