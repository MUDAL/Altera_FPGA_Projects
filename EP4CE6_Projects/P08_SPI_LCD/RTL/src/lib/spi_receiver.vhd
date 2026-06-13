--MIT License
--
--Copyright (c) 2024 Olaoluwa Raji
--
--Permission is hereby granted, free of charge, to any person obtaining a copy
--of this software and associated documentation files (the "Software"), to deal
--in the Software without restriction, including without limitation the rights
--to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
--copies of the Software, and to permit persons to whom the Software is
--furnished to do so, subject to the following conditions:
--
--The above copyright notice and this permission notice shall be included in all
--copies or substantial portions of the Software.
--
--THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
--OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
--SOFTWARE.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module to receive data from an SPI master (a microcontroller).  
-- Data (16 bits) is received MSB first.  
-- SPI mode = 0 (CPOL = 0 and CPHA = 0).  
-- Data is sampled on the rising edge of the SPI clock (SCK).

entity spi_receiver is
   port(rst_n:   in std_logic;
        clk:     in std_logic;
        mosi:    in std_logic;
        sck:     in std_logic;
        cs:      in std_logic;
        rs_out: out std_logic;
        en_out: out std_logic;
        db_out: out std_logic_vector(7 downto 0);
        done:   out std_logic);
end spi_receiver;

architecture spi_receiver_rtl of spi_receiver is
   type fsm is (ST_IDLE, 
                ST_SCK_RISE, 
                ST_SCK_FALL, 
                ST_DONE);
                
   signal state:      fsm;
   signal next_state: fsm;
   ------------------------------------------------------------------
   signal index_reg:  integer range 15 downto 0;
   signal index_next: integer range 15 downto 0;
   signal mosi_reg:   std_logic;
   signal sck_reg:    std_logic;
   signal cs_reg:     std_logic;
   signal data_reg:   std_logic_vector(15 downto 0); 
   signal data_next:  std_logic_vector(15 downto 0);
   signal done_reg:   std_logic;
   signal done_next:  std_logic;
begin
   next_state_logic: process(state,
                             sck_reg,
                             cs_reg,
                             index_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            next_state <= ST_SCK_RISE;
            
         when ST_SCK_RISE => -- Sample on rising edge of SCK
            if sck_reg = '1' and cs_reg = '0' then
               next_state <= ST_SCK_FALL;
            elsif cs_reg = '1' then
               next_state <= ST_IDLE;
            end if;
            
         when ST_SCK_FALL => -- Move to next bit on falling edge of SCK
            if sck_reg = '0' and index_reg > 0 then
               next_state <= ST_SCK_RISE;
            elsif sck_reg = '0' and index_reg = 0 then
               next_state <= ST_DONE;
            elsif cs_reg = '1' then
               next_state <= ST_IDLE;
            end if;
            
         when ST_DONE =>
            next_state <= ST_SCK_RISE;
            if cs_reg = '1' then
               next_state <= ST_IDLE;
            end if;
            
      end case;
   end process; 
   
   moore_outputs: process(state,
                          data_reg,
                          index_reg,
                          mosi_reg)
   begin
      data_next <= data_reg;
      done_next <= '0';
      case state is
         when ST_IDLE =>
         
         when ST_SCK_RISE =>
            data_next(index_reg) <= mosi_reg;
            
         when ST_SCK_FALL =>
         
         when ST_DONE =>
            done_next <= '1';
            
      end case;
   end process;
   
   mealy_outputs: process(state,
                          sck_reg,
                          cs_reg,
                          index_reg)
   begin
      index_next <= index_reg;
      case state is
         when ST_IDLE =>
         
         when ST_SCK_RISE =>
            if cs_reg = '1' then
               index_next <= 15;
            end if;
            
         when ST_SCK_FALL =>
            if sck_reg = '0' and index_reg > 0 then
               index_next <= index_reg - 1;
            elsif cs_reg = '1' then
               index_next <= 15;
            end if;
            
         when ST_DONE =>
            index_next <= 15;
            
      end case;
   end process;
   
   -- Buffered outputs
   rs_out <= data_reg(9);
   en_out <= data_reg(8);
   db_out <= data_reg(7 downto 0);
   done   <= done_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state     <= ST_IDLE;
         index_reg <=  15;
         mosi_reg  <= '0';
         sck_reg   <= '0';
         cs_reg    <= '1';
         data_reg  <= (others => '0');
         done_reg  <= '0';
      elsif rising_edge(clk) then
         state     <= next_state;
         index_reg <= index_next;
         mosi_reg  <= mosi;
         sck_reg   <= sck;
         cs_reg    <= cs;
         data_reg  <= data_next;
         done_reg  <= done_next;
      end if;
   end process;
end spi_receiver_rtl;
