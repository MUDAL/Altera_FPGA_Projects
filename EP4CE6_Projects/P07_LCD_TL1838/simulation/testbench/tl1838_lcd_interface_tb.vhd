library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity tl1838_lcd_interface_tb is
end tl1838_lcd_interface_tb;

architecture tl1838_lcd_interface_behav of tl1838_lcd_interface_tb is
   -- Short delay to ensure signals are assigned before they're read
   constant ASSIGN_DELAY: time := CLK_PERIOD / 10;
   ------------------------------------------------------------------
   signal en:             std_logic := '0';
   signal ir_decoder_out: std_logic_vector(15 downto 0);
   signal lcd_rs_in:      std_logic;
   signal lcd_data_in:    std_logic_vector(7 downto 0);  
begin
   uut: entity work.tl1838_lcd_interface(tl1838_lcd_interface_rtl)
   port map(en             => en, 
            ir_decoder_out => ir_decoder_out, 
            lcd_rs_in      => lcd_rs_in, 
            lcd_data_in    => lcd_data_in);
   
   interface_enable_logic: process
   begin
      wait for 10 * CLK_PERIOD;
      en <= '1';
      wait for CLK_PERIOD;
      en <= '0';
   end process;
   
   stimuli: process
      constant PATH: string(1 to 25) := "file/ir_lcd/testcases.txt";
      ---------------------------------------------------------------
      file testcases:    text;   
      variable testcase: line;   
      variable keycode:  string(1 to 4);
   begin
      file_open(testcases,PATH,read_mode);
      
      while not endfile(testcases) loop
         readline(testcases,testcase);
         read(testcase,keycode);
         
         wait until en = '1';
         ir_decoder_out(15 downto 12) <= char2slv(keycode(1));
         ir_decoder_out(11 downto 8)  <= char2slv(keycode(2));
         ir_decoder_out(7 downto  4)  <= char2slv(keycode(3));
         ir_decoder_out(3 downto  0)  <= char2slv(keycode(4));
         wait until en = '0';
      end loop;
      
      file_close(testcases);
      wait;
   end process;
   
   output_verification: process
      constant PATH_1: string(1 to 32) := "file/ir_lcd/expected_outputs.txt";
      constant PATH_2: string(1 to 30) := "file/ir_lcd/status_reports.txt";
      constant ZEROS:  std_logic_vector(2 downto 0) := "000";
      ---------------------------------------------------------------
      file expected_outputs:    text; 
      file status_reports:      text;       
      variable expected_output: line;
      variable status_report:   line;
      variable lcd_data:        string(1 to 3);
      variable data_str:        string(1 to 3); 
      variable status:          string(1 to 4);
      variable pass_count:      integer := 0;
      variable fail_count:      integer := 0;     
   begin
      file_open(expected_outputs,PATH_1,read_mode);
      file_open(status_reports,PATH_2,write_mode);
      
      while not endfile(expected_outputs) loop
         readline(expected_outputs,expected_output);
         read(expected_output,lcd_data);
         
         wait until en = '1';
         wait for ASSIGN_DELAY;
         -- Convert data output from UUT to string format
         data_str(1) := slv2char(ZEROS & lcd_rs_in);
         data_str(2) := slv2char(lcd_data_in(7 downto 4));        
         data_str(3) := slv2char(lcd_data_in(3 downto 0));
         
         if data_str = lcd_data then
            status := "PASS";
            pass_count := pass_count + 1;
         else
            status := "FAIL";
            fail_count := fail_count + 1;
         end if;        

         -- Display test results on the console
         report "Expected: " 
                & lcd_data 
                & ", " 
                & "Got: " 
                & data_str 
                & ", " 
                & "Status: " 
                & status;
                
         -- Store test results in the status reports file      
         write(status_report,string'("Expected: "));
         write(status_report,string'(lcd_data));
         write(status_report,string'(", "));
         write(status_report,string'("Got: "));
         write(status_report,string'(data_str));
         write(status_report,string'(", "));
         write(status_report,string'("Status: "));
         write(status_report,string'(status));         
         writeline(status_reports,status_report);
         wait until en = '0';
         
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
end tl1838_lcd_interface_behav;

