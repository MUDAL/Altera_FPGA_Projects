library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Project: Pong

entity pong_main is
   generic(SCREEN_WIDTH: integer := 640;
           SCREEN_HEIGHT: integer := 480;
           PADDLE_WIDTH: integer := 5;
           PADDLE_HEIGHT: integer := 50;          
           BALL_LENGTH: integer := 8;
           MAX_SCORE: integer := 11);
   port(rst_n: in std_logic;
        clk: in std_logic;
        btn_up: in std_logic;
        btn_down: in std_logic;
        hsync: out std_logic;
        vsync: out std_logic;
        rgb: out std_logic_vector(2 downto 0);
        buzz: out std_logic);
end pong_main;

architecture pong_main_rtl of pong_main is
   constant CLK_FREQ: integer := 50_000_000; -- 50 MHz
   constant BTN_DEB_DELAY_MS: integer := 10; -- Button debounce delay
   constant BALL_DELAY_CLKS: integer := 149_999; -- Motion delay
   constant PADDLE_DELAY_CLKS: integer := 99_999;
   constant GAMEOVER_DELAY_CLKS: integer := 24_999_999;
   constant BUZZ_FREQ_HZ: integer := 3_000;
   constant BUZZ_HALF_PERIOD: integer := CLK_FREQ / (2 * BUZZ_FREQ_HZ) - 1;
   constant BUZZ_DELAY: integer := 1_999_999;
   ------------------------------------------------------------------
   constant TOTAL_DIGITS: integer := 4;
   type digit_t is array(0 to TOTAL_DIGITS - 1) of 
                std_logic_vector(DIG_ADDR_WIDTH - 1 downto 0);
   type digit_font_t is array(0 to TOTAL_DIGITS - 1) of
                std_logic_vector(2 downto 0);
   type digit_xpos_t is array(0 to TOTAL_DIGITS - 1) of integer;
   
   constant DIGIT_XPOS: digit_xpos_t := (0 => 280,
                                         1 => 300,
                                         2 => 323,
                                         3 => 343);
   constant DIGIT_YPOS: integer := 4;
   constant DIGIT_XSTR: integer := 2;
   constant DIGIT_YSTR: integer := 4;
   ------------------------------------------------------------------        
   -- Left paddle
   constant XPOS_L_PADDLE: integer := 50;
   constant YPOS_L_PADDLE: integer := (SCREEN_HEIGHT - PADDLE_HEIGHT) / 2;
   -- Right paddle
   constant XPOS_R_PADDLE: integer := SCREEN_WIDTH - XPOS_L_PADDLE - 
                                      PADDLE_WIDTH;
   constant YPOS_R_PADDLE: integer := YPOS_L_PADDLE;
   ------------------------------------------------------------------
   constant XPOS_BALL: integer := (SCREEN_WIDTH - BALL_LENGTH) / 2;
   constant YPOS_BALL: integer := (SCREEN_HEIGHT - BALL_LENGTH) / 2;
   ------------------------------------------------------------------
   -- Strides for horizontal borders (upper and lower)
   constant XSTR_H_BORDER: integer := SCREEN_WIDTH;
   constant YSTR_H_BORDER: integer := 10;   
   -- Strides for vertical borders (left and right)
   constant XSTR_V_BORDER: integer := 10;
   constant YSTR_V_BORDER: integer := SCREEN_HEIGHT;
   -- Top border
   constant XPOS_TB: integer := 0;
   constant YPOS_TB: integer := 0;
   ------------------------------------------------------------------
   -- Bottom border
   constant XPOS_BB: integer := 0;
   constant YPOS_BB: integer := SCREEN_HEIGHT - YSTR_H_BORDER;
   ------------------------------------------------------------------
   -- Left border
   constant XPOS_LB: integer := 0;
   constant YPOS_LB: integer := 0; 
   ------------------------------------------------------------------
   -- Right border
   constant XPOS_RB: integer := SCREEN_WIDTH - XSTR_V_BORDER;
   constant YPOS_RB: integer := 0;
   ------------------------------------------------------------------
   -- Halfway line
   constant XSTR_HWL: integer := 1;
   constant YSTR_HWL: integer := SCREEN_HEIGHT - 2 * YSTR_H_BORDER;
   constant XPOS_HWL: integer := SCREEN_WIDTH / 2;
   constant YPOS_HWL: integer := YSTR_H_BORDER;
   ------------------------------------------------------------------
   constant MENU_MEM_DEPTH: integer := 14910;
   constant GAMEOVER_MEM_DEPTH: integer := 37800;
   constant MENU_ADDR_WIDTH: integer := log_base2(MENU_MEM_DEPTH); 
   constant GAMEOVER_ADDR_WIDTH: integer := log_base2(GAMEOVER_MEM_DEPTH);
   ------------------------------------------------------------------
   constant MENU_BMP_WIDTH: integer := 210;
   constant MENU_BMP_HEIGHT: integer := 71;
   constant GAMEOVER_BMP_WIDTH: integer := 210;
   constant GAMEOVER_BMP_HEIGHT: integer := 180;   
   ------------------------------------------------------------------
   signal pixel_x: std_logic_vector(9 downto 0); 
   signal pixel_y: std_logic_vector(9 downto 0);
   signal valid_pixel: std_logic; 
   signal pix_tick: std_logic; -- VGA Pixel tick 
   signal rgb_out: std_logic_vector(2 downto 0);
   -- Graph signals
   signal ball: std_logic_vector(2 downto 0);
   signal l_paddle: std_logic_vector(2 downto 0);
   signal r_paddle: std_logic_vector(2 downto 0);
   signal board: std_logic_vector(2 downto 0);
   signal digit_font: digit_font_t; 
   -- Debounced signals
   signal btns: std_logic_vector(1 downto 0);
   -- Autonomous control signals
   signal auto: std_logic_vector(1 downto 0);
   -- Coordinates
   signal x_ball: std_logic_vector(9 downto 0);
   signal y_ball: std_logic_vector(9 downto 0);
   signal y_left: std_logic_vector(9 downto 0);
   signal y_right: std_logic_vector(9 downto 0);
   -- Ball direction
   signal direct: std_logic_vector(2 downto 0);
   -- Signal to indicate border crashes (left or right)
   signal crash: std_logic_vector(1 downto 0);
   ------------------------------------------------------------------
   signal digit: digit_t;
   ------------------------------------------------------------------
   -- Signals to indicate when delay timers are done counting
   signal ball_tick: std_logic;
   signal paddle_tick: std_logic;
   signal freq_timer_tick: std_logic;
   signal gameover_tick: std_logic; 
   ------------------------------------------------------------------
   signal start: std_logic;
   signal trig_sound: std_logic;
   signal trig_r_paddle: std_logic;
   signal l_paddle_hit: std_logic; -- Signifies when left paddle is hit
   signal freq_timer_start: std_logic; 
   signal winner: std_logic_vector(1 downto 0); -- Bit 1:0 -> Player 1:2
   signal gameover: std_logic;
   ------------------------------------------------------------------
   signal menu_mem_addr: std_logic_vector(MENU_ADDR_WIDTH downto 0);
   signal menu_mem_bit: std_logic_vector(0 downto 0);
   signal menu_bitmap: std_logic_vector(2 downto 0);
   signal gameover_mem_addr: std_logic_vector(GAMEOVER_ADDR_WIDTH downto 0);
   signal gameover_mem_bit: std_logic_vector(0 downto 0);
   signal gameover_bitmap: std_logic_vector(2 downto 0); 
   signal screen_game_menu: std_logic;
   signal screen_game_over: std_logic;
begin
   -- Instantiate VGA sync
   vga_sync_unit: entity work.vga_sync(vga_sync_rtl)
   port map(rst_n => rst_n,
            clk => clk,
            valid_pixel => valid_pixel,
            pix_tick => pix_tick,
            hsync => hsync,
            vsync => vsync,
            pixel_x => pixel_x,
            pixel_y => pixel_y);
            
   -- Instantiate graphics generator
   graph_generator: entity work.vga_graphics(vga_graphics_rtl)
   port map(rst_n => rst_n,
            clk => clk,
            pix_tick => pix_tick,
            valid_pixel => valid_pixel,
            ball => ball,
            l_paddle => l_paddle,
            r_paddle => r_paddle,
            board => board,
            score1_tens => digit_font(0),
            score1_ones => digit_font(1),
            score2_tens => digit_font(2),
            score2_ones => digit_font(3),
            game_menu_bitmap => menu_bitmap,
            game_over_bitmap => gameover_bitmap,
            rgb => rgb);
   
   -- Timer to set the speed of the ball
   ball_timer: entity work.counter(counter_rtl)
   generic map(DELAY_CLKS => BALL_DELAY_CLKS)
   port map(rst_n => rst_n,
            clk => clk,
            start => start,
            tick => ball_tick);
   
   ball_module: entity work.ball_logic(ball_logic_rtl)
   generic map(X_POS => XPOS_BALL,
               Y_POS => YPOS_BALL,
               STRIDE => BALL_LENGTH)
   port map(rst_n => rst_n,
            clk => clk,
            tick => ball_tick,
            pixel_x => pixel_x,
            pixel_y => pixel_y,
            direct => direct,
            crash => crash,
            x_start => x_ball,
            y_start => y_ball,
            ball => ball);
   
   up_button_module: entity work.button_logic(button_logic_rtl)
   generic map(CLK_FREQ => CLK_FREQ,
               DELAY_MS => BTN_DEB_DELAY_MS)
   port map(rst_n => rst_n,
            clk => clk,
            btn_in => btn_up,
            btn_out => btns(0));
   
   down_button_module: entity work.button_logic(button_logic_rtl)
   generic map(CLK_FREQ => CLK_FREQ,
               DELAY_MS => BTN_DEB_DELAY_MS)
   port map(rst_n => rst_n,
            clk => clk,
            btn_in => btn_down,
            btn_out => btns(1));  
   
   auto_control_module: entity work.auto_control(auto_control_rtl)
   generic map(XPOS_R_PADDLE => XPOS_R_PADDLE,
               PADDLE_HEIGHT => PADDLE_HEIGHT,
               BALL_LENGTH => BALL_LENGTH)
   port map(rst_n => rst_n,
            clk => clk,
            l_paddle_hit => l_paddle_hit,
            trig_r_paddle => trig_r_paddle,
            x_ball => x_ball,
            y_ball => y_ball,
            y_r_paddle => y_right,
            up => auto(0),
            down => auto(1));
   
   -- Timer to set the speed of the paddles
   paddle_timer: entity work.counter(counter_rtl)
   generic map(DELAY_CLKS => PADDLE_DELAY_CLKS)
   port map(rst_n => rst_n,
            clk => clk,
            start => start,
            tick => paddle_tick); 
   
   left_paddle_module: entity work.paddle_logic(paddle_logic_rtl)
   generic map(X_POS => XPOS_L_PADDLE,
               Y_POS => YPOS_L_PADDLE,
               X_STRIDE => PADDLE_WIDTH,
               Y_STRIDE => PADDLE_HEIGHT,
               SCREEN_HEIGHT => SCREEN_HEIGHT)
   port map(rst_n => rst_n,
            clk => clk,
            tick => paddle_tick,
            up => btns(0),
            down => btns(1),
            pixel_x => pixel_x,
            pixel_y => pixel_y,
            y_start => y_left,
            paddle => l_paddle);          
            
   right_paddle_module: entity work.paddle_logic(paddle_logic_rtl)
   generic map(X_POS => XPOS_R_PADDLE,
               Y_POS => YPOS_R_PADDLE,
               X_STRIDE => PADDLE_WIDTH,
               Y_STRIDE => PADDLE_HEIGHT,
               SCREEN_HEIGHT => SCREEN_HEIGHT)
   port map(rst_n => rst_n,
            clk => clk,
            tick => paddle_tick,
            up => auto(0),
            down => auto(1),
            pixel_x => pixel_x,
            pixel_y => pixel_y,
            y_start => y_right,
            paddle => r_paddle);
            
   collision_module: entity work.collision_logic(collision_logic_rtl)
   generic map(XPOS_L_PADDLE => XPOS_L_PADDLE,
               XPOS_R_PADDLE => XPOS_R_PADDLE,
               PADDLE_WIDTH => PADDLE_WIDTH,
               PADDLE_HEIGHT => PADDLE_HEIGHT,
               BALL_LENGTH => BALL_LENGTH,
               SCREEN_WIDTH => SCREEN_WIDTH,
               SCREEN_HEIGHT => SCREEN_HEIGHT,
               UPPER_BORDER => YPOS_TB + YSTR_H_BORDER,
               LOWER_BORDER => YPOS_BB,
               LEFT_BORDER => XPOS_LB + XSTR_V_BORDER,
               RIGHT_BORDER => XPOS_RB)
   port map(rst_n => rst_n,
            clk => clk,
            y_left => y_left,
            y_right => y_right,
            x_ball => x_ball,
            y_ball => y_ball,
            direct => direct,
            crash => crash,
            trig_sound => trig_sound,
            trig_r_paddle => trig_r_paddle,
            l_paddle_hit => l_paddle_hit);
   
   game_config_module: entity work.game_config(game_config_rtl)
   port map(rst_n => rst_n,
            clk => clk,
            btn_up => btns(0),
            btn_down => btns(1),
            stop => winner,
            start => start,
            screen_game_menu => screen_game_menu,
            screen_game_over => screen_game_over);
   
   gameover_timer: entity work.counter(counter_rtl)
   generic map(DELAY_CLKS => GAMEOVER_DELAY_CLKS)
   port map(rst_n => rst_n,
            clk => clk,
            start => gameover,
            tick => gameover_tick); 
   
   game_board_module: entity work.game_board(game_board_rtl)
   generic map(XPOS_HWL => XPOS_HWL,
               YPOS_HWL => YPOS_HWL,
               XSTR_HWL => XSTR_HWL,
               YSTR_HWL => YSTR_HWL,
               XPOS_TB => XPOS_TB,
               YPOS_TB => YPOS_TB,
               XPOS_BB => XPOS_BB,
               YPOS_BB => YPOS_BB,
               XPOS_LB => XPOS_LB,
               YPOS_LB => YPOS_LB,
               XPOS_RB => XPOS_RB,
               YPOS_RB => YPOS_RB,
               XSTR_H_BORDER => XSTR_H_BORDER,
               YSTR_H_BORDER => YSTR_H_BORDER,
               XSTR_V_BORDER => XSTR_V_BORDER,
               YSTR_V_BORDER => YSTR_V_BORDER)   
   port map(rst_n => rst_n,
            clk => clk,
            gameover_tick => gameover_tick,
            pixel_x => pixel_x,
            pixel_y => pixel_y,
            winner => winner,
            gameover => gameover,
            board => board);

   digits_in_scores: for i in 0 to TOTAL_DIGITS - 1 generate
      digit_font_module: entity work.font_logic(font_logic_rtl)
      generic map(X_POS => DIGIT_XPOS(i),
                  Y_POS => DIGIT_YPOS,
                  X_STRIDE => DIGIT_XSTR,
                  Y_STRIDE => DIGIT_YSTR)
      port map(pixel_x => pixel_x,
               pixel_y => pixel_y,
               rom_addr => digit(i),
               font => digit_font(i));
   end generate;
   
   scores_calculator: entity work.score_logic(score_logic_rtl)
   generic map(MAX_SCORE => MAX_SCORE)
   port map(rst_n => rst_n,
            clk => clk,
            crash => crash,
            score1_bcd_tens => digit(0),
            score1_bcd_ones => digit(1),
            score2_bcd_tens => digit(2),
            score2_bcd_ones => digit(3),
            winner => winner); 
            
   sound_freq_timer: entity work.counter(counter_rtl)
   generic map(DELAY_CLKS => BUZZ_HALF_PERIOD)
   port map(rst_n => rst_n,
            clk => clk,
            start => freq_timer_start,
            tick => freq_timer_tick);          
            
   sound_module: entity work.sound(sound_rtl)
   generic map(BUZZ_DELAY => BUZZ_DELAY)
   port map(rst_n => rst_n,
            clk => clk,
            trigger => trig_sound,
            freq_timer_tick => freq_timer_tick,
            freq_timer_start => freq_timer_start,
            buzz => buzz);
   
   game_menu_bitmap_mem: entity work.bitmap_memory(bitmap_memory_rtl)
   generic map(MIF_FILE => GAME_MENU_MIF,
               MEM_DEPTH => MENU_MEM_DEPTH)
   port map(clk => clk,
            addr => menu_mem_addr,
            data_out => menu_mem_bit); 
   
   game_menu_bitmap_gen: entity work.bitmap_generator(bitmap_generator_rtl)
   generic map(XPOS_BMP_L => 10,
               XPOS_BMP_C => 217,
               XPOS_BMP_R => 329,
               YPOS_BMP => 100,
               XSTR_BMP => MENU_BMP_WIDTH,
               YSTR_BMP => MENU_BMP_HEIGHT,
               MEM_DEPTH => MENU_MEM_DEPTH)
   port map(rst_n => rst_n,
            clk => clk,
            enable => screen_game_menu,
            pix_tick => pix_tick,
            pixel_x => pixel_x,
            pixel_y => pixel_y,
            mem_bit => menu_mem_bit,
            winner => (others => '0'),
            mem_addr => menu_mem_addr,
            bitmap => menu_bitmap);

   game_over_bitmap_mem: entity work.bitmap_memory(bitmap_memory_rtl)
   generic map(MIF_FILE => GAME_OVER_MIF,
               MEM_DEPTH => GAMEOVER_MEM_DEPTH)
   port map(clk => clk,
            addr => gameover_mem_addr,
            data_out => gameover_mem_bit); 
   
   game_over_bitmap_gen: entity work.bitmap_generator(bitmap_generator_rtl)
   generic map(XPOS_BMP_L => 50,
               XPOS_BMP_C => 217,
               XPOS_BMP_R => 369,
               YPOS_BMP => 100,
               XSTR_BMP => GAMEOVER_BMP_WIDTH,
               YSTR_BMP => GAMEOVER_BMP_HEIGHT,
               MEM_DEPTH => GAMEOVER_MEM_DEPTH)
   port map(rst_n => rst_n,
            clk => clk,
            enable => screen_game_over,
            pix_tick => pix_tick,
            pixel_x => pixel_x,
            pixel_y => pixel_y,
            mem_bit => gameover_mem_bit,
            winner => winner,
            mem_addr => gameover_mem_addr,
            bitmap => gameover_bitmap);            
end pong_main_rtl;