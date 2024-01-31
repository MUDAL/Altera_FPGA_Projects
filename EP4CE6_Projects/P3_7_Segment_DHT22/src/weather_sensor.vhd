library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

entity weather_sensor is
	port(rst_n: in std_logic;
		  clk: in std_logic;
		  io: inout std_logic;
		  led: out std_logic; --to indicate valid DHT22 sensor data
		  dp: out std_logic;
		  seg: out std_logic_vector(6 downto 0);
		  sel: out std_logic_vector(3 downto 0));
end weather_sensor;

architecture weather_sensor_rtl of weather_sensor is
	signal en: std_logic;
	signal dec: std_logic_vector(15 downto 0);
	signal bcd: std_logic_vector(11 downto 0);
	signal done: std_logic;
	signal conversion_done: std_logic;
	signal valid: std_logic;
	signal param: std_logic;
	--signal count: unsigned(31 downto 0);
begin
--	control_path: process(rst_n,clk)
--	begin
--		if rst_n = '0' then
--		elsif rising_edge(clk) then
--		end if;
--	end process;
	
--	process(rst_n,clk)
--	begin
--		if rst_n = '0' then
--			count <= (others => '0');
--			en <= '0';
--		elsif rising_edge(clk) then
--			if count = to_unsigned(99_999_999,count'length) then
--				count <= (others => '0');
--				en <= not conversion_done;
--			else
--				count <= count + 1;
--			end if;
--		end if;
--	end process;
	
	led <= not valid;
	dht22_one_wire: entity work.one_wire(one_wire_rtl)
	port map(rst_n => rst_n, clk => clk, en => '1', param => param,
				io => io, data_out => dec, done => done, valid => valid);
	
	dht22_data_bcd: entity work.dec_to_bcd(dec_to_bcd_rtl)
	generic map(data_width => 16)
	port map(rst_n => rst_n, clk => clk, en => done, dec => dec,
				bcd => bcd, done => conversion_done);
	
	display: entity work.seg_display(seg_display_rtl)
	port map(rst_n => rst_n, clk => clk, bcd => bcd, param => param,
				dp => dp, seg => seg, sel => sel);
				
end architecture weather_sensor_rtl;