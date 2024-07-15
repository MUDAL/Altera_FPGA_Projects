library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Logic unit that handles various collisions in the game.

entity collision_logic is
   generic(XPOS_L_PADDLE: integer := 50;
           XPOS_R_PADDLE: integer := 589;
           PADDLE_WIDTH: integer := 5;
           PADDLE_HEIGHT: integer := 50;
           BALL_LENGTH: integer := 5;
           SCREEN_WIDTH: integer := 640;
           SCREEN_HEIGHT: integer := 480;
           UPPER_BORDER: integer := 10;
           LOWER_BORDER: integer := 469;
           LEFT_BORDER: integer := 10;
           RIGHT_BORDER: integer := 629);
   port(rst_n: in std_logic;
        clk: in std_logic;
        y_left: in std_logic_vector(9 downto 0); -- Left paddle
        y_right: in std_logic_vector(9 downto 0); -- Right paddle
        x_ball: in std_logic_vector(9 downto 0);
        y_ball: in std_logic_vector(9 downto 0);
        direct: out std_logic_vector(2 downto 0); -- Ball direction
        crash: out std_logic_vector(1 downto 0); -- Bit 1: Left, Bit 0:Right
        trig_sound: out std_logic; -- Trigger sound module
        trig_r_paddle: out std_logic); -- Trigger right paddle
end collision_logic;

architecture collision_logic_rtl of collision_logic is
   -- Possible collisions:
   -- ------------------------------------------------------------------------
   --     Collision path                |   Constant name
   -- ------------------------------------------------------------------------
   -- 0.  Upper part of left paddle     |   Upper Left:    HIT_UL
   -- 1.  Middle part of left paddle    |   Middle Left:   HIT_ML
   -- 2.  Lower part of left paddle     |   Down Left:     HIT_DL
   -- 3.  Lower part of right paddle    |   Down Right:    HIT_DR
   -- 4.  Middle part of right paddle   |   Middle Right:  HIT_MR
   -- 5.  Upper part of right paddle    |   Upper Right:   HIT_UR
   -- 6.  Upper part of screen's border |   Top Border:    HIT_TB
   -- 7.  Left part of screen's border  |   Left Border:   HIT_LB
   -- 8.  Lower part of screen's border |   Bottom Border: HIT_BB
   -- 9.  Right part of screen's border |   Right Border:  HIT_RB
   constant HIT_UL: std_logic_vector(9 downto 0) := (0 => '1', others => '0');
   constant HIT_ML: std_logic_vector(9 downto 0) := (1 => '1', others => '0');
   constant HIT_DL: std_logic_vector(9 downto 0) := (2 => '1', others => '0');
   constant HIT_DR: std_logic_vector(9 downto 0) := (3 => '1', others => '0');
   constant HIT_MR: std_logic_vector(9 downto 0) := (4 => '1', others => '0');
   constant HIT_UR: std_logic_vector(9 downto 0) := (5 => '1', others => '0');
   constant HIT_TB: std_logic_vector(9 downto 0) := (6 => '1', others => '0');
   constant HIT_LB: std_logic_vector(9 downto 0) := (7 => '1', others => '0');
   constant HIT_BB: std_logic_vector(9 downto 0) := (8 => '1', others => '0');
   constant HIT_RB: std_logic_vector(9 downto 0) := (9 => '1', others => '0');
   ---------------------------------------------------------------------------
   constant PADDLE_N: std_logic_vector(1 downto 0) := "00"; -- None
   constant PADDLE_L: std_logic_vector(1 downto 0) := "01"; -- Left
   constant PADDLE_R: std_logic_vector(1 downto 0) := "10"; -- Right
   ---------------------------------------------------------------------------
   -- Maximum x-coordinate of the left paddle
   constant X_L_MAX: integer := XPOS_L_PADDLE + PADDLE_WIDTH - 1;
   -- Minimum x-coordinate of the right paddle
   constant X_R_MIN: integer := XPOS_R_PADDLE;
   ---------------------------------------------------------------------------
   -- One-hot encoder for all 10 possible collisions (or hits):
   -- (6 possibilities for the paddles, 4 possibilites for the borders).
   signal hit: std_logic_vector(9 downto 0);
   -- Signifies which paddle was hit
   signal paddle_reg: std_logic_vector(1 downto 0);
   signal paddle_next: std_logic_vector(1 downto 0);
   -- Ball direction register
   signal direct_reg: std_logic_vector(2 downto 0);
   signal direct_next: std_logic_vector(2 downto 0);
   -- Coordinates
   signal y_l_min: unsigned(9 downto 0);
   signal y_r_min: unsigned(9 downto 0);
   signal x_b_min: unsigned(9 downto 0);
   signal y_b_min: unsigned(9 downto 0);
   signal y_l_mid: unsigned(9 downto 0);
   signal y_r_mid: unsigned(9 downto 0);
   signal x_b_max: unsigned(9 downto 0);
   signal y_l_max: unsigned(9 downto 0);
   signal y_r_max: unsigned(9 downto 0);
   -- Signals to indicate border crashes
   signal l_crash: std_logic;
   signal r_crash: std_logic;
begin
   y_l_min <= unsigned(y_left);
   y_r_min <= unsigned(y_right);
   x_b_min <= unsigned(x_ball);
   y_b_min <= unsigned(y_ball);
   
   y_l_mid <= y_l_min + PADDLE_HEIGHT / 2;
   y_r_mid <= y_r_min + PADDLE_HEIGHT / 2;
   
   y_l_max <= y_l_min + PADDLE_HEIGHT;
   y_r_max <= y_r_min + PADDLE_HEIGHT;
   x_b_max <= x_b_min + BALL_LENGTH;
   
   -- Collision detection
   -- Upper part of left paddle
   hit(0) <= '1' when x_b_min = X_L_MAX
                  and y_b_min < y_l_mid - BALL_LENGTH / 2
                  and y_b_min > y_l_min - BALL_LENGTH
     else    '0';   
   
   -- Middle part of left paddle
   hit(1) <= '1' when x_b_min = X_L_MAX
                  and y_b_min = y_l_mid - BALL_LENGTH / 2
     else    '0';      
   
   -- Lower part of left paddle
   hit(2) <= '1' when x_b_min = X_L_MAX
                  and y_b_min > y_l_mid - BALL_LENGTH / 2
                  and y_b_min < y_l_max
     else    '0';  
   
   -- Lower part of right paddle
   hit(3) <= '1' when x_b_max = X_R_MIN
                  and y_b_min > y_r_mid - BALL_LENGTH / 2
                  and y_b_min < y_r_max
     else    '0';
     
   -- Middle part of right paddle
   hit(4) <= '1' when x_b_max = X_R_MIN
                  and y_b_min = y_r_mid - BALL_LENGTH / 2
     else    '0';
   
   -- Upper part of right paddle
   hit(5) <= '1' when x_b_max = X_R_MIN
                  and y_b_min < y_r_mid - BALL_LENGTH / 2
                  and y_b_min > y_r_min - BALL_LENGTH
     else    '0';
     
   -- Upper part of screen's border
   hit(6) <= '1' when y_b_min <= UPPER_BORDER else '0';
   
   -- Left part of screen's border
   hit(7) <= '1' when x_b_min <= LEFT_BORDER else '0';
   
   -- Lower part of screen's border
   hit(8) <= '1' when y_b_min >= LOWER_BORDER else '0';
   
   -- Right part of screen's border
   hit(9) <= '1' when x_b_min >= RIGHT_BORDER else '0';
   
   -- Logic to indicate left and right border crash
   l_crash <= '1' when (paddle_reg = PADDLE_R or paddle_reg = PADDLE_N)
                   and  hit = HIT_LB 
      else    '0';
      
   r_crash <= '1' when (paddle_reg = PADDLE_L or paddle_reg = PADDLE_N)
                   and  hit = HIT_RB
      else    '0';
   
   paddle_detect_and_ball_direct: process(hit,paddle_reg,direct_reg)
   begin
      paddle_next <= paddle_reg;
      direct_next <= direct_reg;
      case hit is
         when HIT_UL =>
            paddle_next <= PADDLE_L;
            direct_next <= DIR_UR;
         when HIT_ML =>
            paddle_next <= PADDLE_L;
            direct_next <= DIR_R;
         when HIT_DL =>
            paddle_next <= PADDLE_L;
            direct_next <= DIR_DR;
         when HIT_DR =>
            paddle_next <= PADDLE_R;
            direct_next <= DIR_DL;
         when HIT_MR =>
            paddle_next <= PADDLE_R;
            direct_next <= DIR_L;
         when HIT_UR =>
            paddle_next <= PADDLE_R;
            direct_next <= DIR_UL;
         when HIT_TB =>
            if paddle_reg = PADDLE_L then
               direct_next <= DIR_DR;
            elsif paddle_reg = PADDLE_R then
               direct_next <= DIR_DL;
            end if;
         when HIT_LB =>
            paddle_next <= PADDLE_N;
            direct_next <= DIR_R;
         when HIT_BB =>
            if paddle_reg = PADDLE_L then
               direct_next <= DIR_UR;
            elsif paddle_reg = PADDLE_R then
               direct_next <= DIR_UL;
            end if;        
         when HIT_RB =>
            paddle_next <= PADDLE_N;
            direct_next <= DIR_L;
         when others =>
      end case;
   end process;
   
   -- Outputs
   direct <= direct_reg;
   crash <= l_crash & r_crash;
   
   trig_sound <= '1' when hit = HIT_UL 
                       or hit = HIT_ML
                       or hit = HIT_DL
                       or hit = HIT_DR
                       or hit = HIT_MR
                       or hit = HIT_UR
                       or hit = HIT_TB
                       or hit = HIT_BB
         else    '0';   
   
   trig_r_paddle <= '1' when paddle_reg /= PADDLE_R else '0';
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         paddle_reg <= PADDLE_N;
         direct_reg <= DIR_L;
      elsif rising_edge(clk) then
         paddle_reg <= paddle_next;
         direct_reg <= direct_next;
      end if;
   end process;
end collision_logic_rtl;