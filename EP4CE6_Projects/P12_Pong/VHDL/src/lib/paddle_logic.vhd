library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module to handle various aspects of the game's paddle logic.

entity paddle_logic is
   generic(X_POS:         integer := 50;
           Y_POS:         integer := 50;
           X_STRIDE:      integer := 5;
           Y_STRIDE:      integer := 5;
           SCREEN_HEIGHT: integer := 480);
           
   port(rst_n:    in std_logic;
        clk:      in std_logic;
        up:       in std_logic;
        down:     in std_logic;
        tick:     in std_logic;
        pixel_x:  in std_logic_vector(9 downto 0);
        pixel_y:  in std_logic_vector(9 downto 0);
        y_start: out std_logic_vector(9 downto 0);
        paddle:  out std_logic_vector(2 downto 0));
end paddle_logic;

architecture paddle_logic_rtl of paddle_logic is
   signal pix_x:   unsigned(9 downto 0);
   signal pix_y:   unsigned(9 downto 0); 
   signal y_reg:   unsigned(9 downto 0);
   signal y_next:  unsigned(9 downto 0);
   -- Bit 1: Up, Bit 0: Down
   signal ctrl:    std_logic_vector(1 downto 0); -- Paddle control
   signal move:    std_logic_vector(1 downto 0); 
   -- Signals to indicate top/upper and bottom/lower screen borders
   signal y_upper: std_logic;
   signal y_lower: std_logic;
begin
   pix_x <= unsigned(pixel_x);
   pix_y <= unsigned(pixel_y);
   
   ctrl <= up & down; -- Active low
   
   move(0) <= '1' when ctrl = "10" else '0'; -- Down
   move(1) <= '1' when ctrl = "01" else '0'; -- Up
   
   y_upper <= '1' when y_reg = 0 else '0';
   y_lower <= '1' when y_reg = SCREEN_HEIGHT - Y_STRIDE - 1 else '0';
   
   y_next <= y_reg + 1 when move = "01" and tick = '1' and y_lower = '0'
     else    y_reg - 1 when move = "10" and tick = '1' and y_upper = '0'
     else    y_reg;
   
   -- Output logic
   y_start <= std_logic_vector(y_reg);
   
   paddle <= "111" when pix_x >= X_POS
                    and pix_y >= y_reg 
                    and pix_x <  X_POS + X_STRIDE
                    and pix_y <  y_reg + Y_STRIDE
     else    "000";  
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         y_reg <= to_unsigned(Y_POS,y_reg'length);  
      elsif rising_edge(clk) then
         y_reg <= y_next;
      end if;
   end process;
end paddle_logic_rtl;