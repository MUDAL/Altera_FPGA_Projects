library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity fifo_ram_tb is
end fifo_ram_tb;

architecture fifo_ram_behav of fifo_ram_tb is
   constant TESTCASES:       integer := 30;
   constant PLL_PERIOD:      time    := 10 * CLK_PERIOD;
   constant RD_ADDR_TIMEOUT: time    := 10 * PLL_PERIOD;
   constant AW:              integer := 6;
   constant DW:              integer := 2;
   ------------------------------------------------------------------
   signal clk:    std_logic := '0';
   signal w_en:   std_logic := '0';
   signal w_addr: std_logic_vector(AW - 1 downto 0) := (others => '0');
   signal r_addr: std_logic_vector(AW - 1 downto 0) := (others => '0');
   signal d_in:   std_logic_vector(DW - 1 downto 0);
   signal d_out:  std_logic_vector(DW - 1 downto 0);
begin
   uut: entity work.fifo_ram(fifo_ram_rtl)
   generic map(AW  => AW,
               DW  => DW)
   port map(clk    => clk,
            w_en   => w_en,
            w_addr => w_addr,
            r_addr => r_addr,
            d_in   => d_in,
            d_out  => d_out);
   
   clock_generation: process
   begin
      wait for PLL_PERIOD / 2;
      clk <= not clk;
   end process;   
   
   ram_write: process
   begin
      for i in 0 to TESTCASES - 1 loop
         wait until rising_edge(clk);
         w_en <= '1';
         w_addr <= std_logic_vector(to_unsigned(i,w_addr'length));
         wait until rising_edge(clk);
         w_en <= '0';
      end loop;
      wait;
   end process;
   
   rd_addr_gen: process
   begin
      for i in 0 to TESTCASES - 1 loop
         wait until w_en = '1';
         wait until w_en = '0';
         r_addr <= std_logic_vector(to_unsigned(i,r_addr'length));
      end loop;
      wait;
   end process;
   
   stimuli: process
      constant PATH: string(1 to 22) := "file/ram/testcases.txt";
      ---------------------------------------------------------------
      file testcases:    text;   
      variable testcase: line;
      variable data_str: string(1 to 1);
      variable data_slv: std_logic_vector(3 downto 0);   
   begin
      file_open(testcases,PATH,read_mode);
      
      while not endfile(testcases) loop
         readline(testcases,testcase);
         read(testcase,data_str);
         
         wait until w_en = '1';
         -- Convert test inputs to std_logic_vector (slv)
         data_slv(3 downto 0) := char2slv(data_str(1));
         d_in <= data_slv(1 downto 0);
      end loop;
      
      file_close(testcases);
      wait;    
   end process;

   output_verification: process
      constant PATH_1: string(1 to 29) := "file/ram/expected_outputs.txt";
      constant PATH_2: string(1 to 27) := "file/ram/status_reports.txt";
      ---------------------------------------------------------------
      file expected_outputs:    text; 
      file status_reports:      text;       
      variable expected_output: line;
      variable status_report:   line;
      variable data_str:        string(1 to 1);
      variable expected_str:    string(1 to 1);
      variable data_slv:        std_logic_vector(3 downto 0);      
      variable status:          string(1 to 4); 
      variable pass_count:      integer := 0;
      variable fail_count:      integer := 0;
   begin
      file_open(expected_outputs,PATH_1,read_mode);
      file_open(status_reports,PATH_2,write_mode);
      wait until w_en = '1';
      wait until w_en = '0';
      wait until rising_edge(clk);
         
      while not endfile(expected_outputs) loop
         readline(expected_outputs,expected_output);
         read(expected_output,expected_str);
         
         wait on r_addr for RD_ADDR_TIMEOUT;
         
         -- Convert data output from UUT to string format
         data_str(1) := slv2char("00" & d_out(1 downto 0));         
         
         if data_str = expected_str then
            status := "PASS";
            pass_count := pass_count + 1;
         else
            status := "FAIL";
            fail_count := fail_count + 1;
         end if;        
         
         -- Display test results on the console
         report "Expected: " 
                & expected_str 
                & ", " 
                & "Got: " 
                & data_str 
                & ", " 
                & "Status: " & status;
                
         -- Store test results in the status reports file      
         write(status_report,string'("Expected: "));
         write(status_report,string'(expected_str));
         write(status_report,string'(", "));
         write(status_report,string'("Got: "));
         write(status_report,string'(data_str));
         write(status_report,string'(", "));
         write(status_report,string'("Status: "));
         write(status_report,string'(status));
         writeline(status_reports,status_report);
         
      end loop;
      
      -- Final report (total successes and failures)
      report "Passed tests: " 
             & integer'image(pass_count) 
             & ", "  
             & "Failed tests: " 
             & integer'image(fail_count);
             
      write(status_report,string'("Passed tests: "));
      write(status_report,string'(integer'image(pass_count)));
      write(status_report,string'(", "));
      write(status_report,string'("Failed tests: "));
      write(status_report,string'(integer'image(fail_count))); 
      writeline(status_reports,status_report);
      
      file_close(expected_outputs);
      file_close(status_reports);    
      assert false report "Simulation done" severity failure;     
      wait;    
   end process;   
end fifo_ram_behav;
