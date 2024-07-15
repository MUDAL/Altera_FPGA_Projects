library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Graphics generation module

entity vga_graphics is
   port(rst_n: in std_logic;
        clk: in std_logic;
        pix_tick: in std_logic;
        valid_pixel: in std_logic;
        ball: in std_logic_vector(2 downto 0);
        l_paddle: in std_logic_vector(2 downto 0);
        r_paddle: in std_logic_vector(2 downto 0);
        board: in std_logic_vector(2 downto 0);
        score1_tens: in std_logic_vector(2 downto 0);
        score1_ones: in std_logic_vector(2 downto 0);
        score2_tens: in std_logic_vector(2 downto 0);
        score2_ones: in std_logic_vector(2 downto 0);
        game_menu_bitmap: in std_logic_vector(2 downto 0);
        game_over_bitmap: in std_logic_vector(2 downto 0);
        rgb: out std_logic_vector(2 downto 0));
end vga_graphics;

architecture vga_graphics_rtl of vga_graphics is
   signal graph_on: std_logic_vector(2 downto 0);
   signal rgb_out: std_logic_vector(2 downto 0);
   signal rgb_reg: std_logic_vector(2 downto 0);
   signal rgb_next: std_logic_vector(2 downto 0);
begin
   graph_on <= ball or 
               l_paddle or 
               r_paddle or 
               board or
               score1_tens or 
               score1_ones or
               score2_tens or 
               score2_ones or
               game_menu_bitmap or
               game_over_bitmap;
         
   rgb_out <= graph_on when valid_pixel = '1' else "000";
   
   rgb_next <= rgb_out when pix_tick = '1' else rgb_reg;
   
   -- Buffered output
   rgb <= rgb_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         rgb_reg <= (others => '0');
      elsif rising_edge(clk) then
         rgb_reg <= rgb_next;
      end if;
   end process;
end vga_graphics_rtl;