library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Gameboard

entity game_board is
   generic(XPOS_HWL:      integer := 319;
           YPOS_HWL:      integer := 0;
           XSTR_HWL:      integer := 1;
           YSTR_HWL:      integer := 480;
           XPOS_TB:       integer := 0;
           YPOS_TB:       integer := 0;
           XPOS_BB:       integer := 0;
           YPOS_BB:       integer := 459;
           XPOS_LB:       integer := 0;
           YPOS_LB:       integer := 0;
           XPOS_RB:       integer := 629;
           YPOS_RB:       integer := 0;           
           XSTR_H_BORDER: integer := 640;
           YSTR_H_BORDER: integer := 20;
           XSTR_V_BORDER: integer := 20;
           YSTR_V_BORDER: integer := 480);
           
   port(rst_n:         in std_logic;
        clk:           in std_logic;
        gameover_tick: in std_logic;
        pixel_x:       in std_logic_vector(9 downto 0);
        pixel_y:       in std_logic_vector(9 downto 0);
        winner:        in std_logic_vector(1 downto 0); -- Bit 1:0 -> Player 1:2
        gameover:     out std_logic;
        board:        out std_logic_vector(2 downto 0));
end game_board;

architecture game_board_rtl of game_board is
   signal pix_x:           unsigned(9 downto 0);
   signal pix_y:           unsigned(9 downto 0);
   signal upper_border:    std_logic_vector(2 downto 0);
   signal lower_border:    std_logic_vector(2 downto 0);
   signal halfway_line:    std_logic_vector(2 downto 0);
   signal right_border:    std_logic_vector(2 downto 0);
   signal left_border:     std_logic_vector(2 downto 0);
   signal gameover_colour: std_logic_vector(2 downto 0);
   signal toggle_reg:      std_logic; -- Toggle colour
   signal toggle_next:     std_logic;
   -- Player colour selection inputs
   signal p1_csel:         std_logic;
   signal p2_csel:         std_logic;
begin
   pix_x <= unsigned(pixel_x);
   pix_y <= unsigned(pixel_y);
   
   upper_border <= "010" when pix_x >= XPOS_TB
                          and pix_y >= YPOS_TB
                          and pix_x <  XPOS_TB + XSTR_H_BORDER
                          and pix_y <  YPOS_TB + YSTR_H_BORDER
           else    "000";
           
   lower_border <= "010" when pix_x >= XPOS_BB
                          and pix_y >= YPOS_BB
                          and pix_x <  XPOS_BB + XSTR_H_BORDER
                          and pix_y <  YPOS_BB + YSTR_H_BORDER
           else    "000";
   
   halfway_line <= "111" when pix_x >= XPOS_HWL
                          and pix_y >= YPOS_HWL
                          and pix_x <  XPOS_HWL + XSTR_HWL
                          and pix_y <  YPOS_HWL + YSTR_HWL
           else    "000";  
   
   right_border <= "010" when pix_x >= XPOS_RB
                          and pix_y >= YPOS_RB
                          and pix_x <  XPOS_RB + XSTR_V_BORDER
                          and pix_y <  YPOS_RB + YSTR_V_BORDER
           else    "000";  
   
   left_border <= "010" when pix_x >= XPOS_LB
                         and pix_y >= YPOS_LB
                         and pix_x <  XPOS_LB + XSTR_V_BORDER
                         and pix_y <  YPOS_LB + YSTR_V_BORDER
          else    "000";      
   
   -- Colour selection control inputs
   p1_csel <= '1' when winner(1) = '1'
                   and toggle_reg = '1'
                   and pix_x >= XPOS_LB + XSTR_V_BORDER
                   and pix_y >= YPOS_TB + YSTR_H_BORDER
                   and pix_x <  XPOS_HWL
                   and pix_y <  YPOS_TB + YSTR_V_BORDER - YSTR_H_BORDER
      else    '0';
   
   p2_csel <= '1' when winner(0) = '1'
                   and toggle_reg = '1'
                   and pix_x >= XPOS_HWL
                   and pix_y >= YPOS_TB + YSTR_H_BORDER
                   and pix_x <  XPOS_LB + XSTR_H_BORDER - XSTR_V_BORDER
                   and pix_y <  YPOS_TB + YSTR_V_BORDER - YSTR_H_BORDER
      else    '0';   
   
   gameover_colour <= "001" when p1_csel = '1'
              else    "100" when p2_csel = '1'
              else    "000";
   
   toggle_next <= not toggle_reg when gameover_tick = '1' else toggle_reg; 
   
   -- Outputs
   gameover <= winner(1) or winner(0);
   
   board <= upper_border or 
            lower_border or 
            halfway_line or
            right_border or
            left_border  or
            gameover_colour;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         toggle_reg <= '0';
      elsif rising_edge(clk) then
         toggle_reg <= toggle_next;
      end if;
   end process;
end game_board_rtl;