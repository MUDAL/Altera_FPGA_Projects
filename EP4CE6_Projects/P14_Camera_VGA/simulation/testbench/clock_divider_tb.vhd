library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pack_tb.all;
use work.pkg.all;

entity clock_divider_tb is
end clock_divider_tb;

architecture clock_divider_behav of clock_divider_tb is
   signal rst_n:    std_logic;
   signal clk:      std_logic := '0';
   signal clk_out:  std_logic;
   signal pos_edge: std_logic;
begin
   uut: entity work.clock_divider(clock_divider_rtl)
   generic map(DIVISOR => CAM_CLK_DIVISOR)
   port map(rst_n      => rst_n,
            clk        => clk,
            clk_out    => clk_out,
            pos_edge   => pos_edge);
   
   -- Reset generator
   rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process;
   
   run_simulation: process
      variable initial: time := 0 ns;
      variable period:  time := 0 ns;
   begin
      wait until rst_n = '1';
      report "[INFO]: The system has been reset";
      
      -- Get timestamps to calculate period of output clock
      wait until rising_edge(clk_out);
      initial := now;
      wait until rising_edge(clk_out);
      period := now - initial;
      
      report "Period = " & time'image(period);
      
      wait for 50 * CLK_PERIOD;
      assert false report "Simulation done" severity failure;
      wait;
   end process;
end clock_divider_behav;