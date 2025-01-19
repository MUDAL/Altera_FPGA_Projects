library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

-- Project: Temperature + Humidity sensing using DHT22 and 7-segment display.

-- Details:
-- 1. "Active low" reset and 7-segment display
-- 2. 50MHz system clock
-- 3. The design is divided into different parts:
--   a. ROM  
--   b. Binary to BCD converter
--   c. One-wire interface
--   d. Shift register and counters
--   e. Other combinational logic
--   f. Control paths

entity weather_sensor is
   port(rst_n: in std_logic;
        clk:   in std_logic;
        io: inout std_logic;
        led:  out std_logic; -- To indicate valid DHT22 sensor data
        dp:   out std_logic;
        seg:  out std_logic_vector(6 downto 0);
        sel:  out std_logic_vector(3 downto 0));
end weather_sensor;

architecture weather_sensor_rtl of weather_sensor is
   constant DATA_WIDTH: integer := 16;
   signal en_dht:    std_logic;
   signal en_conv:   std_logic;
   signal bin:       std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal bcd:       std_logic_vector(11 downto 0);
   signal dht_done:  std_logic;
   signal conv_done: std_logic;
   signal valid:     std_logic;
   signal param:     std_logic;
   signal cnt1:      integer range 0 to 99_999_999;
   signal cnt2:      integer range 0 to 999;
begin
   -- Control path: Periodically control the one-wire and data conversion 
   -- (binary to BCD) designs.
   one_wire_control: process(rst_n,clk)
   begin
      if rst_n = '0' then
         cnt1   <=  0;
         en_dht <= '0';
         param  <= '1';
      elsif rising_edge(clk) then
         if cnt1 = 99_999_999 then
            cnt1   <= 0;
            en_dht <= not dht_done;
            param  <= not param;
         else
            cnt1 <= cnt1 + 1;
         end if;
      end if;
   end process;
   
   bin_to_bcd_control: process(rst_n,clk)
   begin
      if rst_n = '0' then
         cnt2    <=  0;
         en_conv <= '0';
      elsif rising_edge(clk) then
         if cnt2 = 999 then
            cnt2    <= 0;
            en_conv <= not conv_done;        
         else
            cnt2 <= cnt2 + 1;
         end if;     
      end if;
   end process;
   
   led <= not valid; -- Set when new sensor data is valid. 
   
   one_wire: entity work.one_wire(one_wire_rtl)
   port map(rst_n    => rst_n, 
            clk      => clk, 
            en       => en_dht, 
            param    => param,
            io       => io, 
            data_out => bin, 
            done     => dht_done, 
            valid    => valid);
   
   bin_to_bcd: entity work.bin_to_bcd(bin_to_bcd_rtl)
   generic map(DATA_WIDTH => DATA_WIDTH)
   port map(rst_n         => rst_n, 
            clk           => clk, 
            en            => en_conv, 
            bin           => bin,
            bcd           => bcd, 
            done          => conv_done);
   
   display: entity work.seg_display(seg_display_rtl)
   port map(rst_n => rst_n, 
            clk   => clk, 
            bcd   => bcd, 
            param => param,
            dp    => dp, 
            seg   => seg, 
            sel   => sel);
            
end architecture weather_sensor_rtl;