library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Autonomous motion control module for the game's player 2 paddle.

-- NB: The control signals ("up" and "down") are active low.

entity auto_control is
   generic(XPOS_R_PADDLE: integer := 589;
           PADDLE_HEIGHT: integer := 50;
           BALL_LENGTH: integer := 5);
   port(trig_r_paddle: in std_logic;
        x_ball: in std_logic_vector(9 downto 0);
        y_ball: in std_logic_vector(9 downto 0);
        y_r_paddle: in std_logic_vector(9 downto 0);
        up: out std_logic;
        down: out std_logic);
end auto_control;

architecture auto_control_rtl of auto_control is
   signal x_b: unsigned(9 downto 0);
   signal y_b: unsigned(9 downto 0);
   signal y_r: unsigned(9 downto 0);
begin
   x_b <= unsigned(x_ball);
   y_b <= unsigned(y_ball);
   y_r <= unsigned(y_r_paddle);
   
   -- TO-DO:
   
   -- The number '180' affects the paddle's reaction time.
   -- A smaller distance will make the paddle react slower.
   -- We'll need an LFSR to randomize this value and prevent the right paddle  
   -- from being overpowered.
   
   up <= '0' when trig_r_paddle = '1'
              and x_b < XPOS_R_PADDLE - BALL_LENGTH
              and x_b > XPOS_R_PADDLE - BALL_LENGTH - 180
              and y_b < y_r
   else  '1';
   
   down <= '0' when trig_r_paddle = '1'
                and x_b < XPOS_R_PADDLE - BALL_LENGTH
                and x_b > XPOS_R_PADDLE - BALL_LENGTH - 180
                and y_b >= y_r + PADDLE_HEIGHT - 1
   else    '1';
end auto_control_rtl;