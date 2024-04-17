library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module to drive a 16x2 LCD.

entity lcd_driver is
   port(rst_n: in std_logic;
        clk: in std_logic;
        enable: in std_logic;
        rs_in: in std_logic;
        en_in: in std_logic;
        db_in: in std_logic_vector(7 downto 0);
        rw: out std_logic;
        rs: out std_logic;
        en: out std_logic;
        db: out std_logic_vector(7 downto 0));
end lcd_driver;

architecture lcd_driver_rtl of lcd_driver is
   signal rs_reg: std_logic;
   signal rs_next: std_logic;
   signal en_reg: std_logic;
   signal en_next: std_logic;
   signal db_reg: std_logic_vector(7 downto 0);
   signal db_next: std_logic_vector(7 downto 0);
begin
   data_transfer_logic: process(enable,rs_reg,en_reg,db_reg,
                                rs_in,en_in,db_in)
   begin
      rs_next <= rs_reg;
      en_next <= en_reg;
      db_next <= db_reg;
      if enable = '1' then
         rs_next <= rs_in;
         en_next <= en_in;
         db_next <= db_in;
      end if;
   end process;
   
   rw <= '0';
   buffered_outputs: rs <= rs_reg;
                     en <= en_reg;
                     db <= db_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         rs_reg <= '0';
         en_reg <= '0';
         db_reg <= (others => '0');
      elsif rising_edge(clk) then
         rs_reg <= rs_next;
         en_reg <= en_next;
         db_reg <= db_next;
      end if;
   end process;
   
end lcd_driver_rtl;

