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

-- Module: Circuit that converts the Y-component of the camera's
-- output to a grayscale image for the VGA (RGB565 format). 

-- In order to generate a grayscale image, this circuit ensures
-- that the R, G, and B components of the VGA subsystem are equal.
-- i.e R[4:0] = G[5:0] = B[4:0].

entity grayscale_circuit is
   port(y_component:    in std_logic_vector(7 downto 0);
        vga_grayscale: out std_logic_vector(DATA_WIDTH - 1 downto 0));
end grayscale_circuit;

architecture grayscale_circuit_rtl of grayscale_circuit is
   signal y_rshift_3: std_logic_vector(7 downto 0);
   signal y_rshift_2: std_logic_vector(7 downto 0);
   signal red:        std_logic_vector(4 downto 0);
   signal green:      std_logic_vector(5 downto 0);
   signal blue:       std_logic_vector(4 downto 0);
begin
   -- Combinational right shifts
   y_rshift_3 <= "000" & y_component(7 downto 3);
   y_rshift_2 <= "00"  & y_component(7 downto 2);
   
   -- RGB components
   red   <= y_rshift_3(4 downto 0);
   green <= y_rshift_2(5 downto 0);
   blue  <= y_rshift_3(4 downto 0);
   
   -- Output
   vga_grayscale <= red & green & blue;
   
end grayscale_circuit_rtl;