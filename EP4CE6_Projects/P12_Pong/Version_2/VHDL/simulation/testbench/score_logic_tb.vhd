library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pack_tb.all;

entity score_logic_tb is
end score_logic_tb;

architecture score_logic_behav of score_logic_tb is
   constant RIGHT_CRASH: std_logic_vector(1 downto 0) := "01";
   constant LEFT_CRASH:  std_logic_vector(1 downto 0) := "10";
   constant NO_CRASH:    std_logic_vector(1 downto 0) := "00";
   ------------------------------------------------------------------
   signal rst_n:           std_logic;
   signal clk:             std_logic := '0';
   signal crash:           std_logic_vector(1 downto 0) := "00";
   signal score1_bcd_tens: std_logic_vector(3 downto 0);
   signal score1_bcd_ones: std_logic_vector(3 downto 0);
   signal score2_bcd_tens: std_logic_vector(3 downto 0);
   signal score2_bcd_ones: std_logic_vector(3 downto 0);
   signal valid_scores:    std_logic;
   signal end_test:        std_logic := '0';
begin
   uut: entity work.score_logic(score_logic_rtl)
   generic map(MAX_SCORE    => 11)
   port map(rst_n           => rst_n,
            clk             => clk,
            crash           => crash,
            score1_bcd_tens => score1_bcd_tens,
            score1_bcd_ones => score1_bcd_ones,
            score2_bcd_tens => score2_bcd_tens,
            score2_bcd_ones => score2_bcd_ones,
            valid_scores    => valid_scores);
   
   -- Reset generation
   rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process; 
      
   stimuli: process
      constant DELAY_CLKS: integer := 48;
      ---------------------------------------------------------------
      procedure inject(constant BORDER: in std_logic_vector(1 downto 0);
                       constant CYCLES: in integer) is
      begin
         crash <= BORDER; -- Left or Right
         for i in 0 to CYCLES - 1 loop
            wait until rising_edge(clk);
         end loop;
      end procedure inject;
      ---------------------------------------------------------------
   begin
      wait until rst_n = '1';
      
      report "[INFO]: Right crash";
      inject(RIGHT_CRASH, DELAY_CLKS); 
      
      inject(NO_CRASH, DELAY_CLKS);
      
      report "[INFO]: Left crash";
      inject(LEFT_CRASH, DELAY_CLKS); 
      end_test <= '1';
      
      wait; 
   end process;
   
   output_report: process
      variable score1_str_tens: string(1 to 1);
      variable score1_str_ones: string(1 to 1);
      variable score2_str_tens: string(1 to 1);
      variable score2_str_ones: string(1 to 1);
   begin
      wait until rst_n = '1';
      wait on crash;
      
      while end_test = '0' loop
         wait until valid_scores = '1';
         score1_str_tens(1) := slv2char(score1_bcd_tens);
         score1_str_ones(1) := slv2char(score1_bcd_ones);
         score2_str_tens(1) := slv2char(score2_bcd_tens);
         score2_str_ones(1) := slv2char(score2_bcd_ones);
         
         report "Score 1: " 
                & score1_str_tens & score1_str_ones 
                & ", " 
                & "Score 2: " 
                & score2_str_tens & score2_str_ones;
      end loop;
      
      assert false report "Simulation done" severity failure;
      wait;    
   end process;
end score_logic_behav;