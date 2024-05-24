library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity fifo_control_tb is
end fifo_control_tb;

architecture fifo_control_behav of fifo_control_tb is
   constant AW: integer := 6;  -- Address Width (AW)
   constant PLL_PERIOD: time := 10 * CLK_PERIOD;
   ------------------------------------------------------------------
   signal rst_n: std_logic;
   signal clk: std_logic := '0';
   signal w_valid: std_logic := '0'; 
   signal r_ready: std_logic := '0'; 
   signal w_addr: std_logic_vector(AW - 1 downto 0);
   signal r_addr: std_logic_vector(AW - 1 downto 0);
   signal fifo_full: std_logic;
   signal fifo_empty: std_logic;
   signal w_addr_int: integer range 0 to 2**AW - 1 := 0; 
   signal r_addr_int: integer range 0 to 2**AW - 1 := 0;
begin
   uut: entity work.fifo_control(fifo_control_rtl)
   generic map(AW => AW)
   port map(rst_n => rst_n,
            clk => clk,
            w_valid => w_valid,
            r_ready => r_ready, 
            w_addr => w_addr,
            r_addr => r_addr,
            fifo_full => fifo_full,
            fifo_empty => fifo_empty);
            
   reset: rst_n <= '0', '1' after 2 * PLL_PERIOD;
   
   clock_generation: process
   begin
      wait for PLL_PERIOD / 2;
      clk <= not clk;
   end process;
   
   stimuli: process
   begin
      wait until rst_n = '1';
      report "[I]: " & integer'image(2**AW) & " writes";
      wait until rising_edge(clk);
      w_valid <= '1';
      wait until fifo_full = '1';
      w_valid <= '0';
      r_ready <= '1';
      wait;
   end process;
   
   w_addr_int <= to_integer(unsigned(w_addr));
   r_addr_int <= to_integer(unsigned(r_addr));  
   
   output_verification: process
   begin
      wait until rst_n = '1';
      wait until rising_edge(clk);
      
      while(fifo_full = '0') loop
         report "[W]: " & integer'image(w_addr_int) & ", " &
                "[R]: " & integer'image(r_addr_int);
         wait until rising_edge(clk);
      end loop;
      
      report "[W]: " & integer'image(w_addr_int) & ", " &
             "[R]: " & integer'image(r_addr_int) & ", " &    
             "FIFO is full";     
      
      while(fifo_empty = '0') loop
         report "[W]: " & integer'image(w_addr_int) & ", " &
                "[R]: " & integer'image(r_addr_int);
         wait until rising_edge(clk);
      end loop;
      
      report "[W]: " & integer'image(w_addr_int) & ", " &
             "[R]: " & integer'image(r_addr_int) & ", " &    
             "FIFO is empty";
      assert false report "Simulation done" severity failure;     
      wait;
   end process;
   
end fifo_control_behav;
