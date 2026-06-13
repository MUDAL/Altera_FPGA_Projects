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
use work.pkg.all;

-- Digital logic circuit to process and debounce button inputs.
-- The onboard buttons are active low.

entity button is
   generic(CLK_FREQ:       integer := BUTTON_CLK_FREQ_HZ;
           DEBOUNCE_DELAY: integer := BUTTON_DEB_DELAY_MS);
           
   port(rst_n:          in std_logic;
        clk:            in std_logic;
        button_in:      in std_logic;
        single_press:  out std_logic);
end button;

architecture button_rtl of button is
   constant DELAY_CLKS: integer := (DEBOUNCE_DELAY * CLK_FREQ / 1000) - 1;
   ------------------------------------------------------------------
   type fsm is (ST_IDLE, 
                ST_PRESS,
                ST_RELEASE);
   signal state:      fsm;
   signal next_state: fsm;
   ------------------------------------------------------------------
   signal count_reg:      integer range 0 to DELAY_CLKS;
   signal count_next:     integer range 0 to DELAY_CLKS;
   signal button_in_reg:  std_logic;
   signal button_in_next: std_logic;
   signal debounced_reg:  std_logic;
   signal debounced_next: std_logic;
   signal debounced:      std_logic;
begin   
   next_state_logic: process(state,
                             button_in_reg,
                             count_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if button_in_reg = '0' then
               next_state <= ST_PRESS;
            end if;
            
         when ST_PRESS =>
            if button_in_reg = '1' and count_reg = DELAY_CLKS then
               next_state <= ST_RELEASE;
            end if;
            
         when ST_RELEASE =>
            if button_in_reg = '1' and count_reg = DELAY_CLKS then
               next_state <= ST_IDLE;
            end if;
      end case;
   end process;
   
   debounce_logic: process(state,
                           button_in_reg,
                           count_reg)
   begin
      count_next <= count_reg;
      debounced  <= '0';
      case state is
         when ST_IDLE =>
            count_next <= 0;
            
         when ST_PRESS =>
            if count_reg = DELAY_CLKS then
               if button_in_reg = '1' then
                  count_next <=  0;
               else
                  debounced  <= '1';
               end if;
            else
               count_next <= count_reg + 1;
            end if;
            
         when ST_RELEASE =>
            if count_reg /= DELAY_CLKS then
               count_next <= count_reg + 1;
            end if;
      end case;
   end process;
   
   -- Buffers
   button_in_next <= button_in;
   debounced_next <= debounced;
   
   -- Edge detector (debounced short press)
   single_press <= '1' when debounced_next = '1' and debounced_reg = '0'
           else    '0';
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state         <= ST_IDLE;
         count_reg     <=  0;
         button_in_reg <= '1';
         debounced_reg <= '0';
      elsif rising_edge(clk) then
         state         <= next_state;
         count_reg     <= count_next;
         button_in_reg <= button_in_next;
         debounced_reg <= debounced_next;
      end if;
   end process;
end button_rtl;