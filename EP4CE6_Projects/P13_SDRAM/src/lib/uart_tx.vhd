library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Module to transmit data packets to a UART receiver.
-- Baud rate can be adjusted.
-- Data is transmitted LSB first.
-- A frame contains 10 bits:
-- 1. 1 start bit
-- 2. 8 data bits (byte)
-- 3. 1 stop bit

entity uart_tx is
   generic(BAUD_RATE: integer := UART_BAUD_RATE;
           CLK_FREQ:  integer := UART_CLK_FREQ_HZ);
           
   port(rst_n:        in std_logic;
        clk:          in std_logic;
        enable_uart:  in std_logic;
        data_in:      in std_logic_vector(7 downto 0);
        data_out:    out std_logic;
        ready:       out std_logic);
end uart_tx;

architecture uart_tx_rtl of uart_tx is
   constant START_BIT:    std_logic := '0';
   constant STOP_BIT:     std_logic := '1';
   constant CLKS_PER_BIT: integer   := CLK_FREQ / BAUD_RATE;
   ------------------------------------------------------------------
   type fsm is (ST_IDLE, 
                ST_TRANSMIT, 
                ST_DONE);
   signal state:      fsm;
   signal next_state: fsm;
   ------------------------------------------------------------------
   -- 9: stop bit, 8 downto 1: data byte, 0: start bit
   signal data_in_reg:     std_logic_vector(7 downto 0);
   signal data_in_next:    std_logic_vector(7 downto 0); 
   signal uart_frame:      std_logic_vector(9 downto 0);
   signal uart_frame_reg:  std_logic_vector(9 downto 0);
   signal uart_frame_next: std_logic_vector(9 downto 0);
   signal clks_count_reg:  integer range 0 to CLKS_PER_BIT - 1;
   signal clks_count_next: integer range 0 to CLKS_PER_BIT - 1;
   signal index_reg:       integer range 0 to 9;
   signal index_next:      integer range 0 to 9;
   signal data_out_reg:    std_logic;
   signal data_out_next:   std_logic;
begin
   next_state_logic: process(state,
                             enable_uart,
                             index_reg,
                             clks_count_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if enable_uart = '1' then
               next_state <= ST_TRANSMIT;
            end if;
            
         when ST_TRANSMIT =>
            if index_reg = 9 and clks_count_reg = CLKS_PER_BIT - 1 then
               next_state <= ST_DONE;
            end if;
            
         when ST_DONE =>
            next_state <= ST_IDLE;
      end case;
   end process;
   
   clocks_per_bit_counter: process(state,clks_count_reg)
   begin
      clks_count_next <= 0;
      case state is
         when ST_IDLE =>
         
         when ST_TRANSMIT =>
            if clks_count_reg < CLKS_PER_BIT - 1 then
               clks_count_next <= clks_count_reg + 1;
            end if;
            
         when ST_DONE =>
      end case;
   end process;
   
   -- Current index of bit in a UART frame
   bit_index_counter: process(state,
                              enable_uart,
                              index_reg,
                              clks_count_reg)
   begin
      index_next <= index_reg;
      case state is
         when ST_IDLE =>
            if enable_uart = '1' then
               index_next <= 0;
            end if;
            
         when ST_TRANSMIT =>
            if index_reg < 9 and clks_count_reg = CLKS_PER_BIT - 1 then
               index_next <= index_reg + 1;
            end if;
            
         when ST_DONE =>
      end case;
   end process;
   
   data_in_next <= data_in when state = ST_IDLE and enable_uart = '1'
           else    data_in_reg;
   
   uart_frame <= STOP_BIT & data_in_reg & START_BIT;
   
   uart_frame_next <= uart_frame when state = ST_TRANSMIT
              else    uart_frame_reg;  
   
   data_out_next <= uart_frame_reg(index_reg);
   
   -- Outputs
   data_out <= data_out_reg;
   ready    <= '1' when state = ST_TRANSMIT 
                    and index_reg = 9 
                    and clks_count_reg = CLKS_PER_BIT - 1 
    else       '0';
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state          <= ST_IDLE;
         data_in_reg    <= (others => '0');
         uart_frame_reg <= (others => '1');
         clks_count_reg <=  0;
         index_reg      <=  0;
         data_out_reg   <= '1';
      elsif rising_edge(clk) then
         state          <= next_state;
         data_in_reg    <= data_in_next;
         uart_frame_reg <= uart_frame_next;
         clks_count_reg <= clks_count_next;
         index_reg      <= index_next;
         data_out_reg   <= data_out_next;
      end if;
   end process;
end uart_tx_rtl;