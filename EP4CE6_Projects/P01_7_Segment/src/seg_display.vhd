library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

-- Project: 0000 to 9999 counter. 

-- Common cathode 7 segment display.
-- Logic low:  Activates the LEDs.
-- Logic high: Deactivates the LEDs.
-- System clock (clk): 50MHz.
-- 10KHz (to drive the 4 counters for each digit).
-- 10,000 system clock cycles (counter, shift register, and ...
-- ROM index counter) to switch from one digit to another.

-- Asynchronous reset (active low).

entity seg_display is
   port(rst_n: in std_logic;
        clk:   in std_logic;
        seg:  out std_logic_vector(6 downto 0);
        sel:  out std_logic_vector(3 downto 0));
end seg_display;

architecture seg_display_rtl of seg_display is
   constant TIME_TO_SWITCH_DIGIT: integer := 9_999;
   type digit_type is array(0 to 3) of std_logic_vector(3 downto 0);
   ------------------------------------------------------------------
   signal digit:       digit_type;
   signal count:       unsigned(15 downto 0);
   signal shift_reg:   std_logic_vector(3 downto 0);
   signal digit_index: unsigned(2 downto 0);
begin   
   -- Enables time-based digit switching
   digit_switching_counter: process(rst_n,clk)
   begin
      if rst_n = '0' then
         count <= (others => '0');
      elsif rising_edge(clk) then
         if count = to_unsigned(TIME_TO_SWITCH_DIGIT,count'length) then 
            count <= (others => '0');
         else
            count <= count + 1;
         end if;
      end if;
   end process;
   
   -- Select a digit using the switching counter and shift register
   sel <= shift_reg;
   shift_register: process(rst_n,clk)
   begin
      if rst_n = '0' then
         shift_reg <= "1110"; -- select 'units' digit by default
      elsif rising_edge(clk) then
         if count = to_unsigned(TIME_TO_SWITCH_DIGIT,count'length) then
            shift_reg(3 downto 1) <= shift_reg(2 downto 0);
            shift_reg(0) <= shift_reg(3);
         end if;
      end if;
   end process;
   
   -- Counter to select which digit should be loaded into the ROM
   digit_index_counter: process(rst_n,clk)
   begin
      if rst_n = '0' then
         digit_index <= (others => '0');
      elsif rising_edge(clk) then
         if count = to_unsigned(TIME_TO_SWITCH_DIGIT,count'length) then
            if digit_index = to_unsigned(3,digit_index'length) then
               digit_index <= (others => '0');
            else
               digit_index <= digit_index + 1;
            end if;
         end if;
      end if;  
   end process;
   
   -- Counter for 'units' digit
   counter_1: entity work.seg_counter(seg_counter_rtl)
   generic map(PLACE_VALUE => 1)
   port map(rst_n          => rst_n, 
            clk            => clk, 
            digit_out      => digit(0));
   
   -- Counter for 'tens' digit          
   counter_2: entity work.seg_counter(seg_counter_rtl)
   generic map(PLACE_VALUE => 10)
   port map(rst_n          => rst_n, 
            clk            => clk, 
            digit_out      => digit(1));
   
   -- Counter for 'hundreds' digit         
   counter_3: entity work.seg_counter(seg_counter_rtl)
   generic map(PLACE_VALUE => 100)
   port map(rst_n          => rst_n, 
            clk            => clk, 
            digit_out      => digit(2));
   
   -- Counter for 'thousands' digit     
   counter_4: entity work.seg_counter(seg_counter_rtl)
   generic map(PLACE_VALUE => 1000)
   port map(rst_n          => rst_n, 
            clk            => clk, 
            digit_out      => digit(3)); 
   
   -- Converts a digit's current value to signals to drive the display
   rom: entity work.seg_rom(seg_rom_rtl)
   port map(addr     => digit(to_integer(digit_index)), 
            data_out => seg);
   
end seg_display_rtl;