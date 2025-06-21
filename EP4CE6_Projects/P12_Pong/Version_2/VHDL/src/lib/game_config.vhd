library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Game configuration and screen control module.

entity game_config is
   port(rst_n:             in std_logic;
        clk:               in std_logic;
        btn_up:            in std_logic;
        btn_down:          in std_logic;
        -- Stop if there's a winner
        stop:              in std_logic_vector(1 downto 0); 
        start:            out std_logic;
        screen_game_menu: out std_logic;
        screen_game_over: out std_logic);
end game_config;

architecture game_config_rtl of game_config is
   type fsm is (ST_IDLE,
                ST_START,
                ST_END);
                
   signal state:      fsm;
   signal next_state: fsm;
   ------------------------------------------------------------------
   signal p1_wins:        std_logic;
   signal p2_wins:        std_logic;
   signal start_reg:      std_logic;
   signal start_next:     std_logic;
   signal game_menu_reg:  std_logic;
   signal game_menu_next: std_logic;
   signal game_over_reg:  std_logic;
   signal game_over_next: std_logic;
begin
   next_state_logic: process(state,
                             btn_up,
                             btn_down,
                             p1_wins,
                             p2_wins)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if btn_up = '0' or btn_down = '0' then
               next_state <= ST_START;
            end if;
            
         when ST_START =>
            if p1_wins = '1' or p2_wins = '1' then
               next_state <= ST_END;
            end if;
            
         when ST_END =>
         
      end case;
   end process;  
   
   p1_wins <= stop(1);
   p2_wins <= stop(0);  
   
   moore_outputs: process(state)
   begin
      case state is
         when ST_IDLE =>
            start_next     <= '0';
            game_menu_next <= '1';
            game_over_next <= '0';
            
         when ST_START =>
            start_next     <= '1';
            game_menu_next <= '0';
            game_over_next <= '0';
            
         when ST_END =>
            start_next     <= '0';
            game_menu_next <= '0';
            game_over_next <= '1';
            
      end case;
   end process;
   
   -- Outputs
   start            <= start_reg;
   screen_game_menu <= game_menu_reg;
   screen_game_over <= game_over_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state         <= ST_IDLE;
         start_reg     <= '0';
         game_menu_reg <= '0';
         game_over_reg <= '0';
      elsif rising_edge(clk) then
         state         <= next_state;
         start_reg     <= start_next;
         game_menu_reg <= game_menu_next;
         game_over_reg <= game_over_next;
      end if;
   end process;
end game_config_rtl;