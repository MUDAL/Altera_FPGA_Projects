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

entity grayscale_circuit_tb is
end grayscale_circuit_tb;

architecture grayscale_circuit_behav of grayscale_circuit_tb is
   signal y_component:   std_logic_vector(7 downto 0) := x"00";
   signal vga_grayscale: std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal done:          std_logic := '0';
begin
   uut: entity work.grayscale_circuit(grayscale_circuit_rtl)
   port map(y_component   => y_component,
            vga_grayscale => vga_grayscale);
   
   stimulus: process
   begin
      for i in 0 to 255 loop
         y_component <= std_logic_vector(to_unsigned(i,y_component'length));
         wait for 10 ns;
      end loop;
      done <= '1';
      wait;
   end process;
   
   simulation_control: process
   begin
      wait until done = '1';
      wait;
   end process;
end grayscale_circuit_behav;