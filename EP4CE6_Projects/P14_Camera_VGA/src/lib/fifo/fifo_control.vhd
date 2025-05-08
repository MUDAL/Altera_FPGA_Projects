library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Module to implement the control section of the FIFO buffer.
-- This module generates the read and write addresses for the  
-- FIFO's RAM, as well as status signals to indicate whether  
-- the FIFO is full or empty.
-- Inspiration was drawn from the following textbook:
-- "RTL Hardware Design Using VHDL" by Pong P. Chu

entity fifo_control is
   generic(ADDR_WIDTH:  integer := FIFO_ADDR_WIDTH;
           WRITES_LEFT: integer := FIFO_WRITES_LEFT;
           READS_LEFT:  integer := FIFO_READS_LEFT);
   
   port(rst_n:         in std_logic;
        clk:           in std_logic;
        writer_valid:  in std_logic;
        reader_ready:  in std_logic;
        write_addr:   out std_logic_vector(ADDR_WIDTH - 1 downto 0);
        read_addr:    out std_logic_vector(ADDR_WIDTH - 1 downto 0);
        fifo_full:    out std_logic;
        fifo_empty:   out std_logic;
        almost_full:  out std_logic;
        almost_empty: out std_logic);
end fifo_control;

architecture fifo_control_rtl of fifo_control is
   constant FIFO_DEPTH: integer := 2**ADDR_WIDTH;
   ------------------------------------------------------------------
   signal w_ptr_reg:  unsigned(ADDR_WIDTH downto 0);
   signal w_ptr_next: unsigned(ADDR_WIDTH downto 0);
   signal r_ptr_reg:  unsigned(ADDR_WIDTH downto 0);
   signal r_ptr_next: unsigned(ADDR_WIDTH downto 0);
   signal unwritten:  unsigned(ADDR_WIDTH downto 0);
   signal unread:     unsigned(ADDR_WIDTH downto 0);
   signal full:       std_logic;
   signal empty:      std_logic;
begin
   full <= '1' when w_ptr_reg(ADDR_WIDTH) /= r_ptr_reg(ADDR_WIDTH)
                and w_ptr_reg(ADDR_WIDTH - 1 downto 0) = 
                    r_ptr_reg(ADDR_WIDTH - 1 downto 0)
   else    '0';
   
   empty <= '1' when w_ptr_reg = r_ptr_reg else '0';
   
   -- Pointer increments (rolls over when overflow occurs)
   w_ptr_next <= w_ptr_reg + 1 when writer_valid = '1' and full = '0' 
         else    w_ptr_reg;
   
   r_ptr_next <= r_ptr_reg + 1 when reader_ready = '1' and empty = '0'
         else    r_ptr_reg;
   
   -- Calculate number of words left to be:
   -- 1. written
   -- 2. read  
   unwritten <= FIFO_DEPTH + r_ptr_reg - w_ptr_reg;
   unread    <= w_ptr_reg - r_ptr_reg;
   
   -- Outputs
   write_addr   <= std_logic_vector(w_ptr_reg(ADDR_WIDTH - 1 downto 0));
   read_addr    <= std_logic_vector(r_ptr_reg(ADDR_WIDTH - 1 downto 0));
   fifo_full    <= full;
   fifo_empty   <= empty;
   almost_full  <= '1' when unwritten < WRITES_LEFT else '0';
   almost_empty <= '1' when unread    < READS_LEFT  else '0';
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         w_ptr_reg <= (others => '0');
         r_ptr_reg <= (others => '0');
      elsif rising_edge(clk) then
         w_ptr_reg <= w_ptr_next;
         r_ptr_reg <= r_ptr_next;
      end if;
   end process;
end fifo_control_rtl;
