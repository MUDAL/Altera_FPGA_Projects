library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity uart_rx_tb is
end uart_rx_tb;

architecture uart_rx_behav of uart_rx_tb is
   constant BAUD_RATE:  integer := 9600;
   constant CLK_FREQ:   integer := 2_000_000; -- MHz
   constant PLL_PERIOD: time := 25 * CLK_PERIOD;
   -- Clocks per bit -> time
   constant BIT_TIME:   time := PLL_PERIOD * CLK_FREQ / BAUD_RATE;
   constant TEST_DELAY: time := 20 * BIT_TIME;
   ------------------------------------------------------------------
   signal rst_n:    std_logic;
   signal clk:      std_logic := '0';
   signal en:       std_logic := '0';
   signal data_in:  std_logic := '1';
   signal data_out: std_logic_vector(7 downto 0);
   signal done:     std_logic;
begin
   uut: entity work.uart_rx(uart_rx_rtl)
   port map(rst_n    => rst_n, 
            clk      => clk, 
            en       => en, 
            data_in  => data_in, 
            data_out => data_out,
            done     => done);
   
   -- Reset generation
   rst_n <= '0', '1' after 2 * PLL_PERIOD;
   
   clock_generation: process
   begin
      wait for PLL_PERIOD / 2;
      clk <= not clk;
   end process;
   
   stimuli: process
      constant PATH: string(1 to 23) := "file/uart/testcases.txt";
      ---------------------------------------------------------------
      file testcases:    text;   
      variable testcase: line;
      variable data_str: string(1 to 2);
      variable data_slv: std_logic_vector(7 downto 0);   
   begin
      wait until rst_n = '1';
      file_open(testcases,PATH,read_mode);
      
      while not endfile(testcases) loop
         readline(testcases,testcase);
         read(testcase,data_str);
         
         -- Convert test inputs to std_logic_vector (slv)
         data_slv(7 downto 4) := char2slv(data_str(1));
         data_slv(3 downto 0) := char2slv(data_str(2)); 
         
         en <= '1';
         data_in <= '0'; -- Start bit
         wait until rising_edge(clk);
         wait for BIT_TIME;
         
         -- Simulate byte transfer to UART RX module
         for i in 0 to 7 loop
            data_in <= data_slv(i);
            wait for BIT_TIME;
         end loop;
         
         data_in <= '1'; -- Stop bit
         wait until done = '1';
         wait until done = '0';
         wait for TEST_DELAY;
      end loop;
      
      file_close(testcases);
      wait;    
   end process;
   
   output_verification: process
      constant PATH_1: string(1 to 30) := "file/uart/expected_outputs.txt";
      constant PATH_2: string(1 to 28) := "file/uart/status_reports.txt";
      ---------------------------------------------------------------
      file expected_outputs:    text; 
      file status_reports:      text;       
      variable expected_output: line;
      variable status_report:   line;
      variable data_str:        string(1 to 2);
      variable expected_str:    string(1 to 2);
      variable data_slv:        std_logic_vector(7 downto 0);      
      variable status:          string(1 to 4); 
      variable pass_count:      integer := 0;
      variable fail_count:      integer := 0;
   begin
      wait until rst_n = '1';
      file_open(expected_outputs,PATH_1,read_mode);
      file_open(status_reports,PATH_2,write_mode);
      
      while not endfile(expected_outputs) loop
         readline(expected_outputs,expected_output);
         read(expected_output,expected_str);
         
         wait until done = '1';
         
         -- Convert data output from UUT to string format
         data_str(1) := slv2char(data_out(7 downto 4));
         data_str(2) := slv2char(data_out(3 downto 0));   
         
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
                & "Status: " 
                & status;
                
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
end uart_rx_behav;
