library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

entity button_logic_tb is
end button_logic_tb;

architecture button_logic_behav of button_logic_tb is
   constant CLK_DIV: integer := 10_000;
   constant CLK_PERIOD: time := CLK_DIV * 20 ns;
   constant CLK_FREQ: integer := 50_000_000 / CLK_DIV;
   constant DELAY_MS: integer := 5;
   constant UNIT_DELAY: time := 1 ms;
   signal rst_n: std_logic;
   signal clk: std_logic := '0';
   signal btn_in: std_logic := '1';
   signal btn_out: std_logic;
   signal end_test: std_logic := '0';
begin
   uut: entity work.button_logic(button_logic_rtl)
   generic map(CLK_FREQ => CLK_FREQ,
               DELAY_MS => DELAY_MS)
   port map(rst_n => rst_n,
            clk => clk,
            btn_in => btn_in,
            btn_out => btn_out);
   
   reset: rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process; 
   
   stimuli: process
   begin
      wait until rst_n = '1';
      wait until rising_edge(clk);
      wait until rising_edge(clk);
      -- Noisy button press
      for i in 0 to 9 loop
         btn_in <= not btn_in;
         wait until rising_edge(clk);
      end loop;
      btn_in <= '0';
      wait for UNIT_DELAY * DELAY_MS;
      
      -- Noisy button release
      for i in 0 to 9 loop
         btn_in <= not btn_in;
         wait until rising_edge(clk);
      end loop;
      btn_in <= '1';
      wait for UNIT_DELAY * DELAY_MS;
      end_test <= '1';
      wait;
   end process;
   
   output_report: process
   begin
      wait until rst_n = '1';
      wait until btn_out = '0';
      report "Button pressed";
      
      wait until btn_out = '1';
      report "Button released";
      wait until end_test = '1';
      assert false report "Simulation done" severity failure;
      wait;
   end process;
end button_logic_behav;