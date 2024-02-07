library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

--Project: Distance measurement and display using HCSR04 and 7-segment display.
-- Distances are measured in centimeters.

--Details:
--1. "Active low" reset and 7-segment display
--2. 50MHz system clock
--3. The design is divided into different parts:
--	  a. ROM  
--   b. Decimal to BCD converter
--   c. HCSR04 sensor interface
--   d. Shift register and counters
--   e. Other combinational logic
--   f. Control paths

entity distance_sensor is
	port(rst_n: in std_logic;
		  clk: in std_logic;
		  echo: in std_logic;
		  trig: out std_logic;
		  dp: out std_logic;
		  seg: out std_logic_vector(6 downto 0);
		  sel: out std_logic_vector(3 downto 0));
end distance_sensor;

architecture distance_sensor_rtl of distance_sensor is
	constant PULSE_TO_CM: integer := 172;
	constant BIT_WIDTH: integer := 8;
	signal en: std_logic;
	signal done: std_logic;
	signal conversion_done: std_logic;
	signal distance: unsigned(23 downto 0);
	signal dec: std_logic_vector(23 downto 0);
	signal bcd: std_logic_vector(15 downto 0);
	signal pulse: std_logic_vector(15 downto 0);
	signal clks: unsigned(27 downto 0);
begin
	--Periodically trigger the HCSR04 sensor to obtain its readings
	control_path: process(rst_n,clk)
	begin
		if rst_n = '0' then
			clks <= (others => '0');
			en <= '1';
		elsif rising_edge(clk) then
			if clks = to_unsigned(39_999_999,clks'length) then
				clks <= (others => '0');
				en <= not conversion_done;
			else
				clks <= clks + 1;
			end if;
		end if;
	end process;

	hcsr04_inst: entity work.hcsr04(hcsr04_rtl)
	port map(rst_n => rst_n, clk => clk, en => en, echo => echo,
		      trig => trig, pulse => pulse, done => done);
	
	distance <= unsigned(pulse) * to_unsigned(PULSE_TO_CM,BIT_WIDTH); 
	dec <= std_logic_vector(distance);
	
	dec_to_bcd_inst: entity work.dec_to_bcd(dec_to_bcd_rtl)
	port map(rst_n => rst_n, clk => clk, en => done, dec => dec,
				bcd => bcd, done => conversion_done);
	
	display_inst: entity work.seg_display(seg_display_rtl)
	port map(rst_n => rst_n, clk => clk, bcd => bcd,
				dp => dp, seg => seg, sel => sel);
				
end distance_sensor_rtl;

