library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

-- Project: Distance measurement and display using HCSR04 and 7-segment display.
-- Distances are measured in centimeters.

-- Details:
-- 1. "Active low" reset and 7-segment display
-- 2. 50MHz system clock
-- 3. The design is divided into different parts:
--   a. ROM  
--   b. Binary to BCD converter
--   c. HCSR04 sensor interface
--   d. Shift register and counters
--   e. Other combinational logic
--   f. Control paths
-- 4. Two methods of multiplication:
--   a. Using '*' operator (uses slightly fewer resources but enables the
--      system to operate at a lower maximum frequency.
--   b. Using combinational shifting (uses more resources but enables the
--      system to operate at a higher maximum frequency).

entity distance_sensor is
   port(rst_n: in std_logic;
        clk:   in std_logic;
        echo:  in std_logic;
        trig: out std_logic;
        dp:   out std_logic;
        seg:  out std_logic_vector(6 downto 0);
        sel:  out std_logic_vector(3 downto 0));
end distance_sensor;

architecture distance_sensor_rtl of distance_sensor is
   constant DATA_WIDTH: integer := 24;
   constant ZEROS:      unsigned(7 downto 0) := x"00";
   ------------------------------------------------------------------
   signal en:        std_logic;
   signal done:      std_logic;
   signal conv_done: std_logic;
   signal distance:  unsigned(DATA_WIDTH - 1 downto 0);
   signal bin:       std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal bcd:       std_logic_vector(15 downto 0);
   signal pulse:     std_logic_vector(15 downto 0);
   signal clks:      integer range 0 to 24_999_999;
   -- Signals for manual combinational shifting
   signal p_uns:     unsigned(15 downto 0);
   signal p_shift_7: unsigned(DATA_WIDTH - 1 downto 0);
   signal p_shift_5: unsigned(DATA_WIDTH - 1 downto 0);
   signal p_shift_3: unsigned(DATA_WIDTH - 1 downto 0);
   signal p_shift_2: unsigned(DATA_WIDTH - 1 downto 0);
begin
   -- Periodically trigger the HCSR04 sensor to obtain its readings
   control_path: process(rst_n,clk)
   begin
      if rst_n = '0' then
         clks <= 0;
         en   <= '1';
      elsif rising_edge(clk) then
         if clks = 24_999_999 then
            clks <= 0;
            en   <= not conv_done;
         else
            clks <= clks + 1;
         end if;
      end if;
   end process;
   
   -- Multiplication using shift operations:
   -- Multiplication factor = 172 i.e. 128 + 32 + 8 + 4
   
   p_uns     <= unsigned(pulse);
   p_shift_7 <= ZEROS(7 downto 7) & p_uns & ZEROS(6 downto 0);
   p_shift_5 <= ZEROS(7 downto 5) & p_uns & ZEROS(4 downto 0);
   p_shift_3 <= ZEROS(7 downto 3) & p_uns & ZEROS(2 downto 0);
   p_shift_2 <= ZEROS(7 downto 2) & p_uns & ZEROS(1 downto 0);
   
   distance  <= p_shift_7 + p_shift_5 + p_shift_3 + p_shift_2;
   ------------------------------------------------------------------------
   
   bin <= std_logic_vector(distance);
   
   hcsr04_inst: entity work.hcsr04(hcsr04_rtl)
   port map(rst_n => rst_n, 
            clk   => clk, 
            en    => en, 
            echo  => echo,
            trig  => trig, 
            pulse => pulse, 
            done  => done); 
   
   bin_to_bcd_inst: entity work.bin_to_bcd(bin_to_bcd_rtl)
   port map(rst_n => rst_n, 
            clk   => clk, 
            en    => done, 
            bin   => bin,
            bcd   => bcd, 
            done  => conv_done);
   
   display_inst: entity work.seg_display(seg_display_rtl)
   port map(rst_n => rst_n, 
            clk   => clk, 
            bcd   => bcd,
            dp    => dp, 
            seg   => seg, 
            sel   => sel);
            
end distance_sensor_rtl;

