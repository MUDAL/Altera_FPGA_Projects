library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Sound generator

entity sound is
   generic(BUZZ_DELAY: integer := 6_249_999);
   port(rst_n: in std_logic;
        clk: in std_logic;
        trigger: in std_logic;
        freq_timer_tick: in std_logic;
        freq_timer_start: out std_logic;
        buzz: out std_logic);
end sound;

architecture sound_rtl of sound is
   type fsm is (ST_IDLE, ST_BUZZ);
   signal state: fsm;
   signal next_state: fsm;
   signal delay_reg: integer range 0 to BUZZ_DELAY;
   signal delay_next: integer range 0 to BUZZ_DELAY; 
   signal buzz_reg: std_logic;
   signal buzz_next: std_logic;
begin
   next_state_logic: process(state,trigger,delay_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if trigger = '1' then
               next_state <= ST_BUZZ;
            end if;
         when ST_BUZZ =>
            if delay_reg = BUZZ_DELAY then
               next_state <= ST_IDLE;
            end if;
      end case;
   end process;
   
   state_register: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state <= ST_IDLE;
      elsif rising_edge(clk) then
         state <= next_state;
      end if;
   end process;
   
   mealy_outputs: process(state,delay_reg,freq_timer_tick,buzz_reg)
   begin
      case state is
         when ST_IDLE =>
            freq_timer_start <= '0';
            delay_next <= 0;
            buzz_next <= '0';
         when ST_BUZZ =>
            if delay_reg = BUZZ_DELAY then
               freq_timer_start <= '0';
               delay_next <= 0;
               buzz_next <= '0';
            else
               delay_next <= delay_reg + 1;
               if freq_timer_tick = '1' then
                  freq_timer_start <= '0';
                  buzz_next <= not buzz_reg;
               else
                  freq_timer_start <= '1';
                  buzz_next <= buzz_reg;
               end if;              
            end if;
      end case;
   end process;
   
   -- Buffered output
   buzz <= buzz_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         delay_reg <= 0;     
         buzz_reg <= '0';
      elsif rising_edge(clk) then
         delay_reg <= delay_next;    
         buzz_reg <= buzz_next;        
      end if;
   end process;
end sound_rtl;