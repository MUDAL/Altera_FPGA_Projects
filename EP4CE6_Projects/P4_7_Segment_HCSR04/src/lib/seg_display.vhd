library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

--Module for driving the 7-segment display

--Details:
--1. "Active low" reset and 7-segment display
--2. 50MHz system clock
--3. seg: 7-bit output for the a digit of the 7-segment display
--4. dp: decimal point
--5. bcd: BCD equivalent of HCSR04 sensor's data to be displayed

--NB: Place value             | Digit Index
--       Tenths               |     0
--       Units                |     1
--       Tens                 |     2
--       Hundreds             |     3

entity seg_display is
   port(rst_n: in std_logic;
        clk: in std_logic;
        bcd: in std_logic_vector(15 downto 0);
        dp: out std_logic;
        seg: out std_logic_vector(6 downto 0);
        sel: out std_logic_vector(3 downto 0));
end seg_display;

architecture seg_display_rtl of seg_display is
   constant TIME_TO_SWITCH_DIGIT: integer := 9_999;
   type digit_type is array(0 to 3) of std_logic_vector(3 downto 0);
   signal digit: digit_type;
   signal digit_index: unsigned(2 downto 0);
   signal count: unsigned(15 downto 0);
   signal shift_reg: std_logic_vector(3 downto 0);
begin
   --Enables time-based digit switching
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
   
   --Select a digit using the switching counter and shift register
   sel <= shift_reg;
   shift_register: process(rst_n,clk)
   begin
      if rst_n = '0' then
         shift_reg <= "1110";
      elsif rising_edge(clk) then
         if count = to_unsigned(TIME_TO_SWITCH_DIGIT,count'length) then
            shift_reg(3 downto 1) <= shift_reg(2 downto 0);
            shift_reg(0) <= shift_reg(3);
         end if;
      end if;
   end process;

   --Counter to select which digit should be loaded into the ROM
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
   
   --Logic to trigger (active low) the decimal point
   with digit_index select
      dp <= '0' when to_unsigned(1,digit_index'length),
            '1' when others;
   --Place values
   digit(0) <= bcd(3 downto 0);
   digit(1) <= bcd(7 downto 4);
   digit(2) <= bcd(11 downto 8);
   digit(3) <= bcd(15 downto 12);
   
   --Converts a digit's current value to signals to drive the display
   rom: entity work.seg_rom(seg_rom_rtl)
   port map(addr => digit(to_integer(digit_index)), data_out => seg);
   
end seg_display_rtl;
