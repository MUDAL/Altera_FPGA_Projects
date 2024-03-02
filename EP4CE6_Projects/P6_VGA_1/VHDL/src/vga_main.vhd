library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

-- FPGA Exercise: Displaying a bitmap image on a VGA monitor

entity vga_main is
   port(rst_n: in std_logic;
        clk: in std_logic;
        hsync: out std_logic;
        vsync: out std_logic;
        rgb: out std_logic_vector(2 downto 0));
end vga_main;

architecture vga_main_rtl of vga_main is
   signal pixel_x: std_logic_vector(9 downto 0); 
   signal pixel_y: std_logic_vector(9 downto 0);
   signal valid_pixel: std_logic; 
   signal pixel_tick: std_logic;
   signal rgb_out: std_logic_vector(2 downto 0);
   signal rgb_reg: std_logic_vector(2 downto 0); 
   signal rgb_next: std_logic_vector(2 downto 0);
begin
   -- Instantiate VGA sync
   vga_sync_unit: entity work.vga_sync(vga_sync_rtl)
      port map(rst_n => rst_n, clk => clk, valid_pixel => valid_pixel,
               p_tick => pixel_tick, hsync => hsync, vsync => vsync,
               pixel_x => pixel_x, pixel_y => pixel_y);
   -- Instantiate graphic generator
   pixel_gen: entity work.vga_pix_gen(vga_pix_gen_rtl)
      port map(rst_n => rst_n, clk => clk, p_tick => pixel_tick, 
               valid_pixel => valid_pixel, pixel_x => pixel_x, 
               pixel_y => pixel_y, rgb_out => rgb_out);
   
   rgb <= rgb_reg;
   
   rgb_register: process(rst_n,clk)
   begin
      if rst_n = '0' then
         rgb_reg <= (others => '0');
      elsif rising_edge(clk) then
         rgb_reg <= rgb_next;
      end if;
   end process;
   
   rgb_output: process(pixel_tick,rgb_reg,rgb_out)
   begin
      if pixel_tick = '1' then
         rgb_next <= rgb_out;
      else
         rgb_next <= rgb_reg;
      end if;
   end process;
   
end vga_main_rtl;

