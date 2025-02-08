library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity ps2_uart_main_tb is
end ps2_uart_main_tb;

architecture ps2_uart_main_behav of ps2_uart_main_tb is
   -- PS/2 clock rate ranges from 10kHz to 16.7kHz.  
   -- PS/2 data is sampled on the falling edge of the PS/2 clock.
   -- 78740 ns = period for 12.7kHz PS/2 clock
   -- 78740 ns = 3937 clocks
   -- 78740 ns is approximately 1968 clocks for half-period
   constant PS2_CLK_PERIOD: time := 3937 * CLK_PERIOD;
   constant BAUD_RATE:      integer := 115200;
   constant CLK_FREQ:       integer := 50_000_000; -- MHz
   -- Clocks per bit -> time
   constant BIT_TIME:       time := CLK_PERIOD * CLK_FREQ / BAUD_RATE;  
   constant TEST_DELAY:     time := 30 * PS2_CLK_PERIOD;
   ------------------------------------------------------------------
   signal rst_n:    std_logic;
   signal clk:      std_logic := '0';
   signal ps2_clk:  std_logic := '1';
   signal ps2_data: std_logic := '1';
   signal uart_out: std_logic;
   signal done:     std_logic := '0';
begin
   uut: entity work.ps2_uart_main(ps2_uart_main_rtl)
   port map(rst_n    => rst_n, 
            clk      => clk, 
            ps2_clk  => ps2_clk,
            ps2_data => ps2_data, 
            uart_out => uart_out);
   
   -- Reset generation
   rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process;
   
   ps2_clk_stimulus: process
   begin
      wait until rst_n = '1';
      while true loop
         if done = '1' then
            wait for TEST_DELAY;
         else
            wait for PS2_CLK_PERIOD / 2;
            ps2_clk <= not ps2_clk;
         end if;
      end loop;
   end process;   
   
   ps2_data_stimulus: process
      constant PATH: string(1 to 23) := "file/main/testcases.txt";
      ---------------------------------------------------------------
      file testcases:    text;   
      variable testcase: line;
      variable data_str: string(1 to 3);
      -- 10: stop bit, 9: parity, 8 downto 1: data bits, 0: start bit
      -- 11: redundant
      variable data_slv: std_logic_vector(11 downto 0); 
   begin
      wait until rst_n = '1';
      file_open(testcases,PATH,read_mode);
      
      while not endfile(testcases) loop
         readline(testcases,testcase);
         read(testcase,data_str);
         
         -- Convert test inputs to std_logic_vector (slv)
         data_slv(11 downto 8) := char2slv(data_str(1));
         data_slv(7 downto 4)  := char2slv(data_str(2));
         data_slv(3 downto 0)  := char2slv(data_str(3));
         
         for i in 0 to 10 loop
            ps2_data <= data_slv(i);
            wait until ps2_clk = '0';
         end loop;
         
         wait until ps2_clk = '1';
         wait for 3 * CLK_PERIOD; -- Based on internal state and registers
         done <= '1';
         wait until rising_edge(clk);
         done <= '0';
      end loop;
      
      file_close(testcases);
      wait;
   end process;
   
   output_verification: process
      constant PATH_1: string(1 to 30) := "file/main/expected_outputs.txt";
      constant PATH_2: string(1 to 28) := "file/main/status_reports.txt";
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
         
         -- Simulate UART transmission process
         wait until done = '1';
         wait until done = '0';
         -- 1. Wait for start bit to be sent
         wait for BIT_TIME + 2 * CLK_PERIOD;
         -- 2. Data transfer (8 bits)
         for i in 0 to 7 loop
            data_slv(i) := uart_out;
            wait for BIT_TIME + 2 * CLK_PERIOD;
         end loop;
         -- 3. Wait for stop bit
         wait for BIT_TIME + 2 * CLK_PERIOD;
         
         -- Convert data output from UUT to string format
         data_str(1) := slv2char(data_slv(7 downto 4));
         data_str(2) := slv2char(data_slv(3 downto 0));
         
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
end ps2_uart_main_behav;
