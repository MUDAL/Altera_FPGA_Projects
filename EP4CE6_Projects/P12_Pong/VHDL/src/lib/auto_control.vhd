library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Autonomous motion control module for the game's player 2 paddle.

-- NB: The control signals ("up" and "down") are active low.

entity auto_control is
   generic(XPOS_R_PADDLE: integer := 589;
           PADDLE_HEIGHT: integer := 50;
           BALL_LENGTH: integer := 5);
   port(rst_n: in std_logic;
        clk: in std_logic;
        l_paddle_hit: in std_logic; -- Adjust right paddle's reaction time
        trig_r_paddle: in std_logic;
        x_ball: in std_logic_vector(9 downto 0);
        y_ball: in std_logic_vector(9 downto 0);
        y_r_paddle: in std_logic_vector(9 downto 0);
        up: out std_logic;
        down: out std_logic);
end auto_control;

architecture auto_control_rtl of auto_control is
   -- Maximum distances of the ball from the right paddle
   -- The smaller the distance, the slower the paddle's reaction time.
   -- The 'auto_control' module changes the maximum distance every time ...
   -- the left paddle is hit in order to prevent the right paddle from ....
   -- being overpowered.
   constant MAX_DISTANCES: integer := 8; 
   type max_dist_rom_t is array(0 to MAX_DISTANCES - 1) of integer;
   constant dist_rom: max_dist_rom_t := (0 => 180,
                                         1 => 165,
                                         2 => 5,
                                         3 => 200,
                                         4 => 150,
                                         5 => 95,
                                         6 => 45,
                                         7 => 50);
   signal x_b: unsigned(9 downto 0);
   signal y_b: unsigned(9 downto 0);
   signal y_r: unsigned(9 downto 0);
   signal index_reg: unsigned(2 downto 0);
   signal index_next: unsigned(2 downto 0);
   signal idx: integer range 0 to 7; -- Index in integer form
begin
   x_b <= unsigned(x_ball);
   y_b <= unsigned(y_ball);
   y_r <= unsigned(y_r_paddle);
   
   idx <= to_integer(index_reg);
   
   index_next <= index_reg + 1 when l_paddle_hit = '1' else index_reg;
   
   up <= '0' when trig_r_paddle = '1'
              and x_b < XPOS_R_PADDLE - BALL_LENGTH
              and x_b > XPOS_R_PADDLE - BALL_LENGTH - dist_rom(idx)
              and y_b < y_r
   else  '1';
   
   down <= '0' when trig_r_paddle = '1'
                and x_b < XPOS_R_PADDLE - BALL_LENGTH
                and x_b > XPOS_R_PADDLE - BALL_LENGTH - dist_rom(idx)
                and y_b >= y_r + PADDLE_HEIGHT - 1
   else    '1';
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         index_reg <= (others => '0');
      elsif rising_edge(clk) then
         index_reg <= index_next;
      end if;
   end process;
end auto_control_rtl;