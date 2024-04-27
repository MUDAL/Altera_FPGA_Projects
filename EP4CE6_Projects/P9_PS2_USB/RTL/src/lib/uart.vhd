library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module to transmit data packets to a UART receiver.
-- Baud rate can be adjusted (default = 115200).
-- Data is transmitted LSB first.
-- A data packet contains 10 bits:
-- 1. 1 start bit
-- 2. 8 data bits (byte)
-- 3. 1 stop bit

entity uart is
   generic(BAUD_RATE: integer := 115200;
           CLK_FREQ: integer := 50_000_000);
   port(rst_n: in std_logic;
        clk: in std_logic;
        en: in std_logic;
        data_in: in std_logic_vector(7 downto 0);
        data_out: out std_logic);
end uart;

architecture uart_rtl of uart is
   constant START_BIT: std_logic := '0';
   constant STOP_BIT: std_logic := '1';
   -- Clocks per UART bit
   constant BIT_CLKS: integer := CLK_FREQ / BAUD_RATE;
   type fsm is (ST_IDLE, ST_TRANSMIT, ST_DONE);
   signal state: fsm;
   signal next_state: fsm;
   -- 9: stop bit, 8 downto 1: data byte, 0: start bit
   signal tx_data_reg: std_logic_vector(9 downto 0);
   signal tx_data_next: std_logic_vector(9 downto 0);
   signal clks_reg: integer range 0 to BIT_CLKS - 1;
   signal clks_next: integer range 0 to BIT_CLKS - 1;
   signal index_reg: integer range 0 to 9;
   signal index_next: integer range 0 to 9;
   signal data_reg: std_logic;
   signal data_next: std_logic;
begin
   next_state_logic: process(state,en,index_reg,clks_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if en = '1' then
               next_state <= ST_TRANSMIT;
            end if;
         when ST_TRANSMIT =>
            if index_reg = 9 and clks_reg = BIT_CLKS - 1 then
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
   
   tx_data_next <= STOP_BIT & data_in & START_BIT when state = ST_TRANSMIT
         else      tx_data_reg;
   
   clks_next <= clks_reg + 1 when state = ST_TRANSMIT and 
                clks_reg < BIT_CLKS - 1 else 0;
   
   index_next <= index_reg + 1 when index_reg < 9 and clks_reg = BIT_CLKS - 1
         else        0         when state = ST_IDLE and en = '1'
         else    index_reg;
   
   data_next <= tx_data_reg(index_reg);
   
   buffered_output: data_out <= data_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         tx_data_reg <= (others => '1');
         clks_reg <= 0;
         index_reg <= 0;
         data_reg <= '1';
      elsif rising_edge(clk) then
         tx_data_reg <= tx_data_next;
         clks_reg <= clks_next;
         index_reg <= index_next;
         data_reg <= data_next;
      end if;
   end process;
end uart_rtl;