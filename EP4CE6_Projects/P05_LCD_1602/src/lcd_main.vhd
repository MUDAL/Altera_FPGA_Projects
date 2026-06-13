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

-- FPGA Exercise: Displaying text on a 16x2 LCD module.
-- The data and instructions to drive the LCD's controller are ...
-- stored in a ROM (program memory).
-- The 'control path' traverses the ROM till it reaches the end (NULL).  
-- If the 'control path' hasn't reached the end of the ROM, a valid ...
-- instruction is fed to the 'LCD driver' to control the LCD module.

entity lcd_main is
   port(rst_n: in std_logic;
        clk:   in std_logic;
        rs:   out std_logic;
        en:   out std_logic;
        rw:   out std_logic;
        db:   out std_logic_vector(7 downto 0));
end lcd_main;

architecture lcd_main_rtl of lcd_main is
   constant ADDR_WIDTH: integer := 4;
   ------------------------------------------------------------------
   signal rs_in: std_logic;
   signal db_in: std_logic_vector(7 downto 0);
   signal done:  std_logic;
   signal addr:  unsigned(ADDR_WIDTH - 1 downto 0);
   signal instr: std_logic_vector(8 downto 0);  
begin
   control_path: process(rst_n,clk)
   begin
      if rst_n = '0' then
         addr <= (others => '0');
      elsif rising_edge(clk) then
         if done = '1' then
            addr <= addr + 1;
         end if;
      end if;
   end process;

   program_memory: entity work.prog_mem(prog_mem_rtl)
   generic map(ADDR_WIDTH => ADDR_WIDTH)
   port map(addr          => std_logic_vector(addr), 
           instruction    => instr);   
   
   -- Instruction decoder
   rs_in <= instr(8);
   db_in <= instr(7 downto 0); 
   
   lcd_1602: entity work.lcd_driver(lcd_driver_rtl)
   port map(rst_n => rst_n, 
            clk   => clk, 
            rs_in => rs_in, 
            d_in  => db_in, 
            rs    => rs, 
            en    => en, 
            rw    => rw, 
            db    => db, 
            done  => done);
   
end lcd_main_rtl;

