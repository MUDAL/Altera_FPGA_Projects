library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

-- This module implements a RAM-based Synchronous FIFO buffer.  
-- The FIFO consists of two parts:  
-- 1. The memory section (RAM)  
-- 2. The controller (address and status signal generator).  

entity fifo is
   generic(AW: integer := 6;  -- Address Width
           DW: integer := 2); -- Data Width
   port(rst_n: in std_logic;
        clk: in std_logic;
        w_valid: in std_logic; -- FIFO's writer has 'valid' data to send
        r_ready: in std_logic; -- FIFO's reader is 'ready' to read
        d_in: in std_logic_vector(DW - 1 downto 0);
        d_out: out std_logic_vector(DW - 1 downto 0);
        r_oe: out std_logic); -- Output Enable (for FIFO's reader)
end fifo;

architecture fifo_rtl of fifo is
   signal w_en: std_logic; -- Write Enable (for RAM)
   signal w_addr: std_logic_vector(AW - 1 downto 0);
   signal r_addr: std_logic_vector(AW - 1 downto 0);
   signal fifo_full: std_logic;
   signal fifo_empty: std_logic;
   signal d_ram: std_logic_vector(DW - 1 downto 0);
   signal d_reg: std_logic_vector(DW - 1 downto 0);
   signal d_next: std_logic_vector(Dw - 1 downto 0);
   signal ce_reg: std_logic; -- Clock Enable (For output registers)
   signal ce_next: std_logic;   
   signal oe_reg: std_logic_vector(1 downto 0); -- Output Enable
   signal oe_next: std_logic;
begin
   fifo_control: entity work.fifo_control(fifo_control_rtl)
   generic map(AW => AW)
   port map(rst_n => rst_n,
            clk => clk,
            w_valid => w_valid,
            r_ready => r_ready,
            w_addr => w_addr,
            r_addr => r_addr,
            fifo_full => fifo_full,
            fifo_empty => fifo_empty);
        
   fifo_ram: entity work.fifo_ram(fifo_ram_rtl)
   generic map(AW => AW,
               DW => DW)
   port map(clk => clk,
            w_en => w_en,
            w_addr => w_addr,
            r_addr => r_addr,
            d_in => d_in,
            d_out => d_ram);
   
   w_en <= '1' when w_valid = '1' and fifo_full = '0' else '0';
   
   ce_next <= '1' when r_ready = '1' and fifo_empty = '0' else '0';
   oe_next <=  '1'  when ce_next = '1' else '0';
   d_next <= d_ram when ce_reg = '1' else d_reg;
   
   buffered_outputs: d_out <= d_reg;
                     r_oe <= oe_reg(1);
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         ce_reg <= '0';
         oe_reg <= (others => '0');    
         d_reg <= (others => '0');
      elsif rising_edge(clk) then
         ce_reg <= ce_next;
         oe_reg(0) <= oe_next;
         oe_reg(1) <= oe_reg(0);    
         d_reg <= d_next;
      end if;
   end process;
end fifo_rtl;
