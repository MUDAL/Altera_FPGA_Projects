library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--4-bit generic counter for each digit or segment ...
--of the 4-digit 7 segment display

entity seg_counter is
   generic(PLACE_VALUE: integer := 1);
   port(rst_n: in std_logic;
        clk: in std_logic;
        digit_out: out std_logic_vector(3 downto 0));
end seg_counter;

architecture seg_counter_rtl of seg_counter is
   -- System clock: 50 MHz 
   -- 10 kHz clock: 5000 cycles of system clock
   -- 10,000 periods of 10 kHz clock = 1 second
   -- Half cycle for 10 kHz: 2500
   -- Maximum clock cycles for a digit = 10,000 x place value
   constant HALF_CYCLE: integer := 2499;
   constant CMAX_10KHZ: integer := (PLACE_VALUE * 10_000) - 1;
   signal cnt1: integer range 0 to HALF_CYCLE;
   signal cnt2: integer range 0 to CMAX_10KHZ;
   signal tick: std_logic; 
   signal rise: std_logic; -- Rising edge of 10 kHz clock
   signal digit: unsigned(3 downto 0);
begin
   clock_10kHz: process(rst_n,clk)
   begin
      if rst_n = '0' then
         cnt1 <= 0;
         tick <= '1';
      elsif rising_edge(clk) then
         if cnt1 = HALF_CYCLE then
            cnt1 <= 0;
            tick <= not tick;
         else
            cnt1 <= cnt1 + 1;
         end if;
      end if;
   end process;
   
   edge_detector: rise <= '1' when tick = '1' and cnt1 = 0 else '0';
   
   clock_counter_10kHz: process(rst_n,clk)
   begin
      if rst_n = '0' then
         cnt2 <= 0;
      elsif rising_edge(clk) then
         if rise = '1' then
            if cnt2 = CMAX_10KHZ then
               cnt2 <= 0;
            else
               cnt2 <= cnt2 + 1;
            end if;
         end if;
      end if;
   end process;
   
   buffered_output: digit_out <= std_logic_vector(digit);  
   
   digit_counter: process(rst_n,clk)
   begin
      if rst_n = '0' then
         digit <= (others => '0');     
      elsif rising_edge(clk) then
         if rise = '1' then
            if cnt2 = CMAX_10KHZ then
               if digit = to_unsigned(9,digit'length) then
                  digit <= (others => '0');
               else
                  digit <= digit + 1;
               end if;        
            end if;
         end if;
      end if;
   end process;
   
end seg_counter_rtl;
