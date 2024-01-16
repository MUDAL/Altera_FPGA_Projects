library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

--Common cathode 7 segment display
--Logic low:  Activates the LEDs
--Logic high: Deactivates the LEDs
entity seg_display is
	port(rst_n: in std_logic;
        clk: in std_logic;
        seg: out std_logic_vector(6 downto 0);
        dig: out std_logic_vector(3 downto 0));
end seg_display;

architecture seg_display_rtl of seg_display is
	type addr_type is array(0 to 3) of std_logic_vector(3 downto 0);
	signal rom_addr: addr_type;
	signal done: std_logic_vector(3 downto 0);
	signal count: unsigned(23 downto 0);
	--signal shift_reg: std_logic_vector(3 downto 0);
	signal rom_index: unsigned(2 downto 0);
begin
	--dig <= '0';
	
--	digit_selector: process(clk)
--	begin
--		if rising_edge(clk) then
--			if rst_n = '0' then
--				count <= (others => '0');
--			else
--				if count > to_unsigned(9_999_999,count'length) then 
--					count <= (others => '0');
--				else
--					count <= count + 1;
--				end if;
--			end if;
--		end if;
--	end process;
	
	dig <= "1011";
--	dig <= shift_reg;
--	shift_register: process(clk)
--	begin
--		if rising_edge(clk) then
--			if rst_n = '0' then
--				shift_reg <= "1110";
--			else
--				if count > to_unsigned(9_999_999,count'length) then
--					shift_reg(3 downto 1) <= shift_reg(2 downto 0);
--					shift_reg(0) <= shift_reg(3);
--				end if;
--			end if;
--		end if;
--	end process;
	
--	rom_index_counter: process(clk)
--	begin
--		if rising_edge(clk) then
--			if rst_n = '0' then
--				rom_index <= (others => '0');
--			else
--				if count > to_unsigned(9_999_999,count'length) then
--					if rom_index > to_unsigned(3,rom_index'length) then
--						rom_index <= (others => '0');
--					else
--						rom_index <= rom_index + 1;
--					end if;
--				end if;
--			end if;
--		end if;	
--	end process;
	
	counter_1: entity work.seg_counter(seg_counter_rtl)
	generic map(place_value => 1)
	port map(rst_n => rst_n, clk => clk, en => '1', count_out => rom_addr(0));
				   
	counter_2: entity work.seg_counter(seg_counter_rtl)
	generic map(place_value => 10)
	port map(rst_n => rst_n, clk => clk, en => '1', count_out => rom_addr(1));
				
	counter_3: entity work.seg_counter(seg_counter_rtl)
	generic map(place_value => 100)
	port map(rst_n => rst_n, clk => clk, en => '1', count_out => rom_addr(2));
			
	counter_4: entity work.seg_counter(seg_counter_rtl)
	generic map(place_value => 1000)
	port map(rst_n => rst_n, clk => clk, en => '1', count_out => rom_addr(3));	
		
	rom: entity work.seg_rom(seg_rom_rtl)
	port map(addr => rom_addr(2), data_out => seg);
	--port map(addr => rom_addr(to_integer(rom_index)), data_out => seg);
	
end seg_display_rtl;