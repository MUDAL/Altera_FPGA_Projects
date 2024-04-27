library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

entity ps2_uart_main is
   port(rst_n: in std_logic;
        clk: in std_logic;
        ps2_clk: in std_logic;
        ps2_data: in std_logic;
        uart_out: out std_logic);
end ps2_uart_main;

architecture ps2_uart_main_rtl of ps2_uart_main is
   signal ps2_out: std_logic_vector(7 downto 0);
   signal done: std_logic;
   signal en: std_logic;
   signal data_in: std_logic_vector(7 downto 0);
begin
   data_in <= ps2_out;
   en <= done;
   
   ps2_interface: entity work.ps2(ps2_rtl)
   port map(rst_n => rst_n, clk => clk, ps2_clk => ps2_clk,
            ps2_data => ps2_data, ps2_out => ps2_out, done => done);
   
   uart_interface: entity work.uart(uart_rtl)
   port map(rst_n => rst_n, clk => clk, en => en, 
            data_in => data_in, data_out => uart_out);
end ps2_uart_main_rtl;
