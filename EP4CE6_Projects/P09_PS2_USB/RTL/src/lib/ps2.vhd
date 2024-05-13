library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module to extract data from PS/2 keyboard signals.  
-- PS/2 clock rate ranges from 10kHz to 16.7kHz.  
-- PS/2 data is sampled on the falling edge of the PS/2 clock.  
-- Data is transmitted LSB first.  
-- A data packet contains 11 bits:
-- 1. 1 start bit  
-- 2. 8 data bits  
-- 3. 1 parity bit  
-- 4. 1 stop bit

entity ps2 is
   port(rst_n: in std_logic;
        clk: in std_logic;
        ps2_clk: in std_logic;
        ps2_data: in std_logic;
        ps2_out: out std_logic_vector(7 downto 0);
        done: out std_logic);
end ps2;

architecture ps2_rtl of ps2 is
   type fsm is (ST_IDLE, ST_START, ST_PS2_CLK_HIGH, ST_PS2_CLK_LOW, 
                ST_STOP, ST_DONE);
   signal state: fsm;
   signal next_state: fsm;
   signal ps2_clk_reg: std_logic;
   signal ps2_data_reg: std_logic;
   -- 9: stop bit, 8: parity, 7 downto 0: data bits
   signal ps2_out_reg: std_logic_vector(9 downto 0);
   signal ps2_out_next: std_logic_vector(9 downto 0);
   signal done_reg: std_logic;
   signal done_next: std_logic;
   signal index_reg: integer range 0 to 9;
   signal index_next: integer range 0 to 9;
begin
   next_state_logic: process(state,ps2_clk_reg,ps2_data_reg,index_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if ps2_clk_reg = '0' and ps2_data_reg = '0' then
               next_state <= ST_START;
            end if;
         when ST_START =>
            if ps2_clk_reg = '1' then
               next_state <= ST_PS2_CLK_HIGH;
            end if;
         when ST_PS2_CLK_HIGH =>
            if ps2_clk_reg = '0' and index_reg < 9 then
               next_state <= ST_PS2_CLK_LOW;
            elsif ps2_clk_reg = '0' and index_reg = 9 then
               next_state <= ST_STOP;
            end if;
         when ST_PS2_CLK_LOW =>
            if ps2_clk_reg = '1' then
               next_state <= ST_PS2_CLK_HIGH;
            end if;
         when ST_STOP =>
            if ps2_clk_reg = '1' then
               next_state <= ST_DONE;
            end if;
         when ST_DONE =>
            next_state <= ST_IDLE;
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
   
   moore_output: done_next <= '1' when state = ST_DONE else '0';
   
   mealy_outputs: process(state,ps2_clk_reg,ps2_data_reg,
                          ps2_out_reg,index_reg)
   begin
      ps2_out_next <= ps2_out_reg;
      index_next <= index_reg;
      case state is
         when ST_IDLE =>
         when ST_START =>
         when ST_PS2_CLK_HIGH =>
            if ps2_clk_reg = '0' then
               ps2_out_next(index_reg) <= ps2_data_reg;
            end if;
         when ST_PS2_CLK_LOW =>
            if ps2_clk_reg = '1' then
               index_next <= index_reg + 1;
            end if;
         when ST_STOP =>
            if ps2_clk_reg = '1' then
               index_next <= 0;
            end if;
         when ST_DONE =>
      end case;
   end process;
   
   buffered_outputs: ps2_out <= ps2_out_reg(7 downto 0);
                     done <= done_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         ps2_clk_reg <= '1';
         ps2_data_reg <= '1';
         ps2_out_reg <= (others => '1');
         done_reg <= '0';
         index_reg <= 0;
      elsif rising_edge(clk) then
         ps2_clk_reg <= ps2_clk;
         ps2_data_reg <= ps2_data;
         ps2_out_reg <= ps2_out_next;
         done_reg <= done_next;
         index_reg <= index_next;
      end if;
   end process;
end ps2_rtl;
