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

entity ps2_uart_main is
   port(rst_n:     in std_logic;
        clk:       in std_logic;
        ps2_clk:   in std_logic;
        ps2_data:  in std_logic;
        uart_out: out std_logic);
end ps2_uart_main;

architecture ps2_uart_main_rtl of ps2_uart_main is
   signal ps2_out: std_logic_vector(7 downto 0);
   signal done:    std_logic;
   signal en:      std_logic;
   signal data_in: std_logic_vector(7 downto 0);
begin
   -- Internal connections
   data_in <= ps2_out;
   en      <= done;
   
   ps2_interface: entity work.ps2(ps2_rtl)
   port map(rst_n    => rst_n, 
            clk      => clk, 
            ps2_clk  => ps2_clk,
            ps2_data => ps2_data, 
            ps2_out  => ps2_out, 
            done     => done);
   
   uart_interface: entity work.uart(uart_rtl)
   port map(rst_n    => rst_n, 
            clk      => clk, 
            en       => en, 
            data_in  => data_in, 
            data_out => uart_out);
end ps2_uart_main_rtl;
