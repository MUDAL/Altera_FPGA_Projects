library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module to receive data packets from a UART transmitter (HC06 module).
-- Baud rate can be adjusted (default = 9600).
-- Data is received LSB first.
-- A data packet contains 10 bits:
-- 1. 1 start bit
-- 2. 8 data bits (byte)
-- 3. 1 stop bit

entity uart_rx is
   generic(BAUD_RATE: integer := 9600;
           CLK_FREQ:  integer := 2_000_000);
   port(rst_n:     in std_logic;
        clk:       in std_logic;
        en:        in std_logic;
        data_in:   in std_logic;
        data_out: out std_logic_vector(7 downto 0);
        done:     out std_logic);
end uart_rx;

architecture uart_rx_rtl of uart_rx is
   constant START_BIT: std_logic := '0';
   -- Clocks per UART bit
   constant BIT_CLKS: integer := (CLK_FREQ / BAUD_RATE);
   constant HALF_BIT: integer := (BIT_CLKS / 2) - 1;
   constant FULL_BIT: integer := (BIT_CLKS - 1);
   
   type fsm is (ST_IDLE, 
                ST_RECEIVE, 
                ST_DONE);
                
   signal state:      fsm;
   signal next_state: fsm;
   ------------------------------------------------------------------
   -- 9: stop bit, 8 downto 1: data byte, 0: start bit
   signal rx_reg:     std_logic;
   signal clks_reg:   integer range 0 to FULL_BIT;
   signal clks_next:  integer range 0 to FULL_BIT;
   signal index_reg:  integer range 0 to 9;
   signal index_next: integer range 0 to 9;
   signal data_reg:   std_logic_vector(9 downto 0);
   signal data_next:  std_logic_vector(9 downto 0);   
   signal done_reg:   std_logic;
   signal done_next:  std_logic;
begin
   next_state_logic: process(state,
                             en,
                             rx_reg,
                             index_reg,
                             clks_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if en = '1' and rx_reg = START_BIT then
               next_state <= ST_RECEIVE;
            end if;
            
         when ST_RECEIVE =>
            if index_reg = 9 and clks_reg = FULL_BIT then
               next_state <= ST_DONE;
            end if;
            
         when ST_DONE =>
            next_state <= ST_IDLE;
            
      end case;
   end process;
   
   -- Moore output
   done_next <= '1' when state = ST_DONE else '0';
   
   mealy_outputs: process(state,
                          clks_reg,
                          data_reg,
                          index_reg,
                          rx_reg)
   begin
      data_next <= data_reg;
      case state is
         when ST_IDLE =>
         
         when ST_RECEIVE => -- Sample received bit at half the bit length
            if clks_reg = HALF_BIT then
               data_next(index_reg) <= rx_reg;
            end if;
            
         when ST_DONE =>
         
      end case;
   end process; 
   
   clks_next <= clks_reg + 1 when state = ST_RECEIVE 
                              and clks_reg < FULL_BIT 
        else         0;
   
   index_next <= index_reg + 1 when index_reg /= 9  and clks_reg = FULL_BIT
         else        0         when state = ST_IDLE and rx_reg = START_BIT
         else    index_reg;   
   
   -- Buffered outputs
   data_out <= data_reg(8 downto 1);
   done     <= done_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state     <= ST_IDLE;
         rx_reg    <= '0';
         clks_reg  <=  0;
         index_reg <=  0;
         data_reg  <= (others => '0');
         done_reg  <= '0';
      elsif rising_edge(clk) then
         state     <= next_state;
         rx_reg    <= data_in;
         clks_reg  <= clks_next;
         index_reg <= index_next;
         data_reg  <= data_next;
         done_reg  <= done_next;
      end if;  
   end process;
end uart_rx_rtl;
