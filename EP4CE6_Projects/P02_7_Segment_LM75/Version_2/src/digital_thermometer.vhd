library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

-- Project: Digital thermometer using LM75 sensor and 7-segment display.

-- Details:
-- 1. "Active low" reset and 7-segment display
-- 2. 50MHz system clock
-- 3. 100kHz I2C clock
-- 4. The design is divided into different parts:
--   a. ROM  
--   b. Binary to BCD converter
--   c. I2C reader
--   d. Shift register and counters
--   e. Other combinational logic
--   f. Control path

entity digital_thermometer is
   port(rst_n:  in std_logic;
        clk:    in std_logic;
        sda: inout std_logic;
        scl:   out std_logic;
        dp:    out std_logic;
        seg:   out std_logic_vector(6 downto 0);
        sel:   out std_logic_vector(3 downto 0));
end digital_thermometer;

architecture digital_thermometer_rtl of digital_thermometer is
   signal i2c_data:  std_logic_vector(8 downto 0);
   signal bcd:       std_logic_vector(11 downto 0);
   signal en:        std_logic;
   signal i2c_done:  std_logic;
   signal conv_done: std_logic;
   signal clks:      unsigned(27 downto 0);
begin
   
   -- Controller: To coordinate temperature sensing and data output ...
   -- by periodically toggling the 'en' signal of the I2C module.
   control_path: process(rst_n,clk)
   begin
      if rst_n = '0' then
         clks <= (others => '0');
         en   <= '1';
      elsif rising_edge(clk) then
         if clks = to_unsigned(24_999_999,clks'length) then
            clks <= (others => '0');
            en   <= not conv_done;
         else
            clks <= clks + 1;
         end if;
      end if;
   end process;
   
   lm75_i2c: entity work.i2c_reader(i2c_reader_rtl)
   port map(rst_n    => rst_n, 
            clk      => clk, 
            en       => en, 
            sda      => sda, 
            scl      => scl, 
            data_out => i2c_data, 
            done     => i2c_done);
   
   i2c_data_to_bcd: entity work.bin_to_bcd(bin_to_bcd_rtl)
   port map(rst_n => rst_n, 
            clk =>   clk, 
            en =>    i2c_done, 
            bin =>   i2c_data(8 downto 1), 
            bcd =>   bcd, 
            done =>  conv_done);
   
   display: entity work.seg_display(seg_display_rtl)
   port map(rst_n => rst_n, 
            clk   => clk, 
            bcd   => bcd, 
            fp    => i2c_data(0),
            dp    => dp, 
            seg   => seg, 
            sel   => sel);
            
end digital_thermometer_rtl;
