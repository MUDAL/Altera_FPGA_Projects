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
           DATA_WIDTH: integer := FIFO_DATA_WIDTH;
           FIFO_TYPE:  fifo_t  := TYPE_CAM_FIFO);
           
   port(rst_n:          in std_logic;
        clk:            in std_logic;
        writer_valid:   in std_logic;
        reader_ready:   in std_logic;
        data_in:        in std_logic_vector(DATA_WIDTH - 1 downto 0);
        data_out:      out std_logic_vector(DATA_WIDTH - 1 downto 0);
        enable_writer: out std_logic;
        enable_reader: out std_logic);
end fifo_main;

architecture fifo_main_rtl of fifo_main is
   signal write_enable: std_logic;
   signal write_addr:   std_logic_vector(ADDR_WIDTH - 1 downto 0);
   signal read_addr:    std_logic_vector(ADDR_WIDTH - 1 downto 0);
   signal fifo_full:    std_logic;
   signal fifo_empty:   std_logic;
   signal almost_full:  std_logic;
   signal almost_empty: std_logic;
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
            fifo_empty    => fifo_empty,
            almost_full   => almost_full,
            almost_empty  => almost_empty);
        
   fifo_ram: entity work.fifo_ram(fifo_ram_rtl)
   generic map(ADDR_WIDTH => ADDR_WIDTH,
               DATA_WIDTH => DATA_WIDTH)
   port map(clk           => clk,
            write_enable  => write_enable,
            write_addr    => write_addr,
            read_addr     => read_addr,
            data_in       => data_in,
            data_out      => data_out);
   
   -- Enable "writes" to the RAM component of the FIFO
   write_enable <= '1' when writer_valid = '1' and fifo_full = '0' else '0';
   
   enable_fifo_writer: process(almost_empty)
   begin
      if FIFO_TYPE = TYPE_VGA_FIFO then
         enable_writer <= almost_empty;
      else
         enable_writer <= '0';
      end if;
   end process;
   
   enable_fifo_reader: process(fifo_empty,almost_full)
   begin
      if FIFO_TYPE = TYPE_CAM_FIFO then
         enable_reader <= almost_full;
      else
         enable_reader <= not fifo_empty;
      end if;
   end process;
   
end fifo_main_rtl;
