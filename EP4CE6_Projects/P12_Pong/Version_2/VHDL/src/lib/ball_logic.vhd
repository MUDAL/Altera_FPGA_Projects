library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Module to handle various aspects of the game's ball logic.

entity ball_logic is
   generic(X_POS:  integer := 50;
           Y_POS:  integer := 50;
           STRIDE: integer := 5);
           
   port(rst_n:    in std_logic;
        clk:      in std_logic;
        tick:     in std_logic;
        pixel_x:  in std_logic_vector(9 downto 0);
        pixel_y:  in std_logic_vector(9 downto 0);
        direct:   in std_logic_vector(2 downto 0);
        crash:    in std_logic_vector(1 downto 0);
        x_start: out std_logic_vector(9 downto 0);
        y_start: out std_logic_vector(9 downto 0);
        ball:    out std_logic_vector(2 downto 0));
end ball_logic;

architecture ball_logic_rtl of ball_logic is
   signal pix_x:  unsigned(9 downto 0);
   signal pix_y:  unsigned(9 downto 0);
   signal x_reg:  unsigned(9 downto 0);
   signal x_next: unsigned(9 downto 0);
   signal x_temp: unsigned(9 downto 0);
   signal y_reg:  unsigned(9 downto 0);
   signal y_next: unsigned(9 downto 0);
   signal y_temp: unsigned(9 downto 0);
begin
   pix_x <= unsigned(pixel_x);
   pix_y <= unsigned(pixel_y);
   
   ball_direction: process(x_reg,
                           y_reg,
                           tick,
                           direct)
   begin
      x_temp <= x_reg;
      y_temp <= y_reg;
      --------------------------------------------
      if tick = '1' then
         case direct is
            when DIR_UR =>
               x_temp <= x_reg + 1;
               y_temp <= y_reg - 1;
               
            when DIR_R =>
               x_temp <= x_reg + 1;
               
            when DIR_DR =>
               x_temp <= x_reg + 1;
               y_temp <= y_reg + 1;
               
            when DIR_DL =>
               x_temp <= x_reg - 1;
               y_temp <= y_reg + 1;
               
            when DIR_L =>
               x_temp <= x_reg - 1;
               
            when DIR_UL =>
               x_temp <= x_reg - 1;
               y_temp <= y_reg - 1;
               
            when others =>
         end case;
      end if;
   end process;    
   
   ball_direction_reset_logic: process(crash,
                                       x_temp,
                                       y_temp)
   begin
      if crash = "00" then
         x_next <= x_temp;
         y_next <= y_temp;
      else
         x_next <= to_unsigned(X_POS,x_next'length);
         y_next <= to_unsigned(Y_POS,y_next'length);        
      end if;
   end process;
   
   -- Output logic
   x_start <= std_logic_vector(x_reg);
   y_start <= std_logic_vector(y_reg);
   
   ball <= "111" when pix_x >= x_reg
                  and pix_y >= y_reg 
                  and pix_x <  x_reg + STRIDE
                  and pix_y <  y_reg + STRIDE
   else    "000"; 
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         x_reg <= to_unsigned(X_POS,x_reg'length);
         y_reg <= to_unsigned(Y_POS,y_reg'length);
      elsif rising_edge(clk) then
         x_reg <= x_next;
         y_reg <= y_next;
      end if;
   end process;
end ball_logic_rtl;