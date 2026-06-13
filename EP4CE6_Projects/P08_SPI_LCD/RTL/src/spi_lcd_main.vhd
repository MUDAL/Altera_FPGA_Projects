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

-- RTL design to configure the EP4CE6 FPGA as an SPI interface between  
-- a microcontroller (STM32F401RE) and a HD44780U 16x2 LCD.  
-- System clock: 50 MHz  
-- Reset type: Asynchronous

entity spi_lcd_main is
   port(rst_n: in std_logic;
        clk:   in std_logic;
        mosi:  in std_logic;
        sck:   in std_logic;
        cs:    in std_logic; -- SPI chip select
        rw:   out std_logic;
        rs:   out std_logic;
        en:   out std_logic;
        db:   out std_logic_vector(7 downto 0));
end spi_lcd_main;

architecture spi_lcd_main_rtl of spi_lcd_main is
   signal rs_out: std_logic;
   signal en_out: std_logic;
   signal db_out: std_logic_vector(7 downto 0);
   signal done:   std_logic;
   signal enable: std_logic;
   signal rs_in:  std_logic;
   signal en_in:  std_logic;
   signal db_in:  std_logic_vector(7 downto 0);
begin
   -- Internal connections
   enable <= done;
   rs_in  <= rs_out;
   en_in  <= en_out;
   db_in  <= db_out;
   
   spi_interface: entity work.spi_receiver(spi_receiver_rtl)
   port map(rst_n  => rst_n, 
            clk    => clk, 
            mosi   => mosi, 
            sck    => sck,
            cs     => cs, 
            rs_out => rs_out, 
            en_out => en_out, 
            db_out => db_out, 
            done   => done);
            
   lcd_module: entity work.lcd_driver(lcd_driver_rtl)
   port map(rst_n  => rst_n, 
            clk    => clk, 
            enable => enable, 
            rs_in  => rs_in,
            en_in  => en_in, 
            db_in  => db_in, 
            rw     => rw, 
            rs     => rs, 
            en     => en, 
            db     => db);
end spi_lcd_main_rtl;
