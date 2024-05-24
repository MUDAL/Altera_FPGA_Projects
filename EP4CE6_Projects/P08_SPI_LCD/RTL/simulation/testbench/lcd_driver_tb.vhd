library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity lcd_driver_tb is
end lcd_driver_tb;

architecture lcd_driver_behav of lcd_driver_tb is
   constant TEST_DELAY: time := 10 * CLK_PERIOD;
   -- Signals
   signal rst_n: std_logic;
   signal clk: std_logic := '0';
   signal enable: std_logic := '1';
   signal rs_in: std_logic;
   signal en_in: std_logic;
   signal db_in: std_logic_vector(7 downto 0);
   signal rw: std_logic;
   signal rs: std_logic;
   signal en: std_logic;
   signal db: std_logic_vector(7 downto 0);
begin
   uut: entity work.lcd_driver(lcd_driver_rtl)
   port map(rst_n => rst_n, clk => clk, enable => enable, rs_in => rs_in,
            en_in => en_in, db_in => db_in, rw => rw, rs => rs, en => en, 
            db => db);
   
   reset: rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process;
   
   stimuli: process
      constant PATH: string(1 to 22) := "file/lcd/testcases.txt";
      file testcases: text;   
      variable testcase: line;
      variable lcd_data_in: string(1 to 3);
      -- Most significant nibble
      variable testcase_msn: std_logic_vector(3 downto 0); 
   begin
      wait until rst_n = '1';
      file_open(testcases,PATH,read_mode);
      while not endfile(testcases) loop
         readline(testcases,testcase);
         read(testcase,lcd_data_in);
         
         testcase_msn := char2slv(lcd_data_in(1));
         rs_in <= testcase_msn(1);
         en_in <= testcase_msn(0);
         db_in(7 downto 4) <= char2slv(lcd_data_in(2));
         db_in(3 downto 0) <= char2slv(lcd_data_in(3));
         
         wait for TEST_DELAY;
      end loop;
      file_close(testcases);
      wait;
   end process;
   
   output_verification: process
      constant PATH_1: string(1 to 29) := "file/lcd/expected_outputs.txt";
      constant PATH_2: string(1 to 27) := "file/lcd/status_reports.txt";
      constant ZEROS: std_logic_vector(1 downto 0) := "00";
      file expected_outputs: text; 
      file status_reports: text;       
      variable expected_output: line;
      variable status_report: line;
      variable lcd_data_out: string(1 to 3);
      variable data_str: string(1 to 3);
      variable status: string(1 to 4);
      variable pass_count: integer := 0;
      variable fail_count: integer := 0;
   begin
      wait until rst_n = '1';
      file_open(expected_outputs,PATH_1,read_mode);
      file_open(status_reports,PATH_2,write_mode);
      while not endfile(expected_outputs) loop
         readline(expected_outputs,expected_output);
         read(expected_output,lcd_data_out);
         
         wait on rs, en, db for TEST_DELAY;
         -- Small delay to ensure assignment of the signals above
         wait until rising_edge(clk); 

         -- Convert data output from UUT to string format
         data_str(1) := slv2char(ZEROS & rs & en);
         data_str(2) := slv2char(db(7 downto 4));        
         data_str(3) := slv2char(db(3 downto 0));
         
         if data_str = lcd_data_out then
            status := "PASS";
            pass_count := pass_count + 1;
         else
            status := "FAIL";
            fail_count := fail_count + 1;
         end if;        
         
         -- Display test results on the console
         report "Expected: " & lcd_data_out & ", " &
                "Got: " & data_str & ", " &
                "Status: " & status;
                
         -- Store test results in the status reports file      
         write(status_report,string'("Expected: "));
         write(status_report,string'(lcd_data_out));
         write(status_report,string'(", "));
         write(status_report,string'("Got: "));
         write(status_report,string'(data_str));
         write(status_report,string'(", "));
         write(status_report,string'("Status: "));
         write(status_report,string'(status));         
         writeline(status_reports,status_report);
      end loop;
      
      -- Final report (total successes and failures)
      report "Passed tests: " & integer'image(pass_count) & ", "  & 
             "Failed tests: " & integer'image(fail_count);
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
   
end lcd_driver_behav;