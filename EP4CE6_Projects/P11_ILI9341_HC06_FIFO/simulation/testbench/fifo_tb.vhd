library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity fifo_tb is
end fifo_tb;

architecture fifo_behav of fifo_tb is
   constant AW: integer := 6;
   constant DW: integer := 2;
   constant PLL_PERIOD: time := 10 * CLK_PERIOD;
   ------------------------------------------------------------------
   signal rst_n: std_logic;
   signal clk: std_logic := '0';
   signal w_valid: std_logic := '0'; 
   signal r_ready: std_logic := '0'; 
   signal d_in: std_logic_vector(DW - 1 downto 0);
   signal d_out: std_logic_vector(DW - 1 downto 0);
   signal r_oe: std_logic;
   
begin
   uut: entity work.fifo(fifo_rtl)
   generic map(AW => AW,  
               DW => DW) 
   port map(rst_n => rst_n,
            clk => clk,
            w_valid => w_valid,
            r_ready => r_ready,
            d_in => d_in,
            d_out => d_out,
            r_oe => r_oe);
         
   reset: rst_n <= '0', '1' after 2 * PLL_PERIOD;
   
   clock_generation: process
   begin
      wait for PLL_PERIOD / 2;
      clk <= not clk;
   end process;
   
   stimuli: process
      variable mod4: integer range 0 to 3 := 0;
   begin
      wait until rst_n = '1';
      report "[I]: " & integer'image(2**AW) & " writes";
      wait until rising_edge(clk);
      w_valid <= '1';
      
      for i in 0 to 2**AW - 1 loop
         mod4 := i mod 4;
         d_in <= std_logic_vector(to_unsigned(mod4,d_in'length));
         wait until rising_edge(clk);
      end loop;
      wait until rising_edge(clk);
      w_valid <= '0';
      r_ready <= '1';
      wait;
   end process;
   
   output_verification: process
   begin
      wait until rst_n = '1';
      wait until r_oe = '1';
      wait until rising_edge(clk);
      
      for i in 0 to 2**AW - 1 loop
         report "[R]: " & integer'image(to_integer(unsigned(d_out)));
         wait until rising_edge(clk);
      end loop;
      
      assert false report "Simulation done" severity failure;
      wait;
   end process;
   
end fifo_behav;
