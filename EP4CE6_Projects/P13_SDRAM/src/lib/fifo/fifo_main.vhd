library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- This module implements a RAM-based Synchronous FIFO buffer.  
-- The FIFO consists of two parts:  
-- 1. The memory section (RAM)  
-- 2. The controller (address and status signal generator).  

entity fifo_main is
   generic(ADDR_WIDTH: integer := FIFO_ADDR_WIDTH;
           DATA_WIDTH: integer := FIFO_DATA_WIDTH);
           
   port(rst_n:          in std_logic;
        clk:            in std_logic;
        writer_valid:   in std_logic;
        reader_ready:   in std_logic;
        data_in:        in std_logic_vector(DATA_WIDTH - 1 downto 0);
        data_out:      out std_logic_vector(DATA_WIDTH - 1 downto 0);
        enable_reader: out std_logic);
end fifo_main;

architecture fifo_main_rtl of fifo_main is
   ------------------------------------------------------------------
   type fsm is (ST_IDLE, 
                ST_FIFO_RECEIVE, 
                ST_FIFO_TRANSMIT);
   signal state:      fsm;
   signal next_state: fsm; 
   ------------------------------------------------------------------
   signal write_enable: std_logic;
   signal write_addr:   std_logic_vector(ADDR_WIDTH - 1 downto 0);
   signal read_addr:    std_logic_vector(ADDR_WIDTH - 1 downto 0);
   signal fifo_full:    std_logic;
   signal fifo_empty:   std_logic;  
begin
   fifo_control: entity work.fifo_control(fifo_control_rtl)
   generic map(ADDR_WIDTH => ADDR_WIDTH)
   port map(rst_n         => rst_n,
            clk           => clk,
            writer_valid  => writer_valid,
            reader_ready  => reader_ready,
            write_addr    => write_addr,
            read_addr     => read_addr,
            fifo_full     => fifo_full,
            fifo_empty    => fifo_empty);
        
   fifo_ram: entity work.fifo_ram(fifo_ram_rtl)
   generic map(ADDR_WIDTH => ADDR_WIDTH,
               DATA_WIDTH => DATA_WIDTH)
   port map(clk           => clk,
            write_enable  => write_enable,
            write_addr    => write_addr,
            read_addr     => read_addr,
            data_in       => data_in,
            data_out      => data_out);
            
   -- FSM logic for sequential FIFO operation:
   -- 1. Read from SDRAM (fill the FIFO first) then,
   -- 2. Write to UART transmitter (empty the FIFO)
   
   next_state_logic: process(state,
                             fifo_empty,
                             fifo_full)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            next_state <= ST_FIFO_RECEIVE;
            
         when ST_FIFO_RECEIVE =>
            if fifo_full = '1' then
               next_state <= ST_FIFO_TRANSMIT;
            end if;
            
         when ST_FIFO_TRANSMIT =>
            if fifo_empty = '1' then
               next_state <= ST_IDLE;
            end if;
      end case;
   end process;
   
   output_logic: process(state,
                         writer_valid,
                         fifo_empty,
                         fifo_full)
   begin
      write_enable  <= '0';
      enable_reader <= '0';   
      case state is
         when ST_IDLE =>
         
         when ST_FIFO_RECEIVE =>
            if writer_valid = '1' and fifo_full = '0' then
               write_enable <= '1';
            end if;
            
         when ST_FIFO_TRANSMIT =>
            if fifo_empty = '0' then
               enable_reader <= '1';
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
   
end fifo_main_rtl;
