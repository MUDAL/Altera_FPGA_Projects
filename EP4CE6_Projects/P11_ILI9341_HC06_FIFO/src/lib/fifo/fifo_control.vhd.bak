library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module to implement the control section of the FIFO buffer.
-- This module generates the read and write addresses for the  
-- FIFO's RAM, as well as status signals to indicate whether  
-- the FIFO is full or empty.
-- Inspiration was drawn from the following textbook:
-- "RTL Hardware Design Using VHDL" by Pong P. Chu

entity fifo_control is
   generic(AW: integer := 6);  -- Address Width (AW)
   port(rst_n: in std_logic;
        clk: in std_logic;
        w_valid: in std_logic; -- FIFO's writer has 'valid' data to send
        r_ready: in std_logic; -- FIFO's reader is 'ready' to read
        w_addr: out std_logic_vector(AW - 1 downto 0);
        r_addr: out std_logic_vector(AW - 1 downto 0);
        fifo_full: out std_logic;
        fifo_empty: out std_logic);
end fifo_control;

architecture fifo_control_rtl of fifo_control is
   signal w_ptr_reg: unsigned(AW downto 0);
   signal w_ptr_next: unsigned(AW downto 0);
   signal r_ptr_reg: unsigned(AW downto 0);
   signal r_ptr_next: unsigned(AW downto 0);
   signal full: std_logic;
   signal empty: std_logic;
begin
   full <= '1' when w_ptr_reg(AW) /= r_ptr_reg(AW)
                and w_ptr_reg(AW - 1 downto 0) = r_ptr_reg(AW - 1 downto 0)
   else    '0';
   
   empty <= '1' when w_ptr_reg = r_ptr_reg else '0';
   
   -- Pointer increments (rolls over when overflow occurs)
   w_ptr_next <= w_ptr_reg + 1 when w_valid = '1' and full = '0' 
         else    w_ptr_reg;
   
   r_ptr_next <= r_ptr_reg + 1 when r_ready = '1' and empty = '0'
         else    r_ptr_reg;
   
   -- Outputs
   w_addr <= std_logic_vector(w_ptr_reg(AW - 1 downto 0));
   r_addr <= std_logic_vector(r_ptr_reg(AW - 1 downto 0));
   
   fifo_full <= full;
   fifo_empty <= empty;
   
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
