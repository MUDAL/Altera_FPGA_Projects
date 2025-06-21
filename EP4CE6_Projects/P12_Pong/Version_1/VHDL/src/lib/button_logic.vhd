library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Button debounce logic

entity button_logic is
   generic(CLK_FREQ: integer := 50_000_000;
           DELAY_MS: integer := 5);
           
   port(rst_n:    in std_logic;
        clk:      in std_logic;
        btn_in:   in std_logic;
        btn_out: out std_logic);
end button_logic;

architecture button_logic_rtl of button_logic is
   constant DELAY_CLKS: integer := (DELAY_MS * CLK_FREQ / 1000) - 1;
   type fsm is (ST_IDLE, 
                ST_PRESS,
                ST_RELEASE);
                
   signal state:      fsm;
   signal next_state: fsm;
   signal cnt_reg:    integer range 0 to DELAY_CLKS + 1;
   signal cnt_next:   integer range 0 to DELAY_CLKS + 1;
   signal btn_i_reg:  std_logic;
   signal btn_i_next: std_logic;
   signal btn_o_reg:  std_logic;
   signal btn_o_next: std_logic;
begin   
   next_state_logic: process(state,
                             btn_i_reg,
                             cnt_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if btn_i_reg = '0' then
               next_state <= ST_PRESS;
            end if;
            
         when ST_PRESS =>
            if btn_i_reg = '1' and cnt_reg = DELAY_CLKS then
               next_state <= ST_RELEASE;
            end if;
            
         when ST_RELEASE =>
            if btn_i_reg = '1' and cnt_reg = DELAY_CLKS then
               next_state <= ST_IDLE;
            end if;
            
      end case;
   end process;
   
   mealy_outputs: process(state,
                          btn_i_reg,
                          cnt_reg,
                          btn_o_reg)
   begin
      btn_o_next <= btn_o_reg;
      cnt_next   <= cnt_reg;
      case state is
         when ST_IDLE =>
            btn_o_next <= btn_i_reg;
            cnt_next   <= 0;
            
         when ST_PRESS =>
            if cnt_reg = DELAY_CLKS then
               if btn_i_reg = '1' then
                  btn_o_next <= btn_i_reg;
                  cnt_next   <= 0;
               end if;
            else
               cnt_next <= cnt_reg + 1;
            end if;
            
         when ST_RELEASE =>
            if cnt_reg /= DELAY_CLKS then
               cnt_next <= cnt_reg + 1;
            end if;
            
      end case;
   end process;
   
   -- Buffered outputs
   btn_i_next <= btn_in;
   btn_out    <= btn_o_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state     <= ST_IDLE;
         cnt_reg   <=  0;
         btn_i_reg <= '1';
         btn_o_reg <= '1';
      elsif rising_edge(clk) then
         state     <= next_state;
         cnt_reg   <= cnt_next;
         btn_i_reg <= btn_i_next;
         btn_o_reg <= btn_o_next;
      end if;
   end process;
end button_logic_rtl;