library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity tl1838_decoder_tb is
end tl1838_decoder_tb;

architecture tl1838_decoder_behav of tl1838_decoder_tb is
   -- Delay before injecting next stimulus to the UUT
   constant COMMS_INTERVAL: time := 10 * CLK_PERIOD;
   -- Signals
   signal rst_n:    std_logic := '0';
   signal clk:      std_logic := '0';
   signal ir:       std_logic := '1'; -- IR decoder's input
   signal data_out: std_logic_vector(15 downto 0);
   signal done:     std_logic;
begin
   uut: entity work.tl1838_decoder(tl1838_decoder_rtl)
   port map(rst_n    => rst_n, 
            clk      => clk, 
            ir       => ir,
            data_out => data_out, 
            done     => done);
   
   -- Reset generation
   rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process;
   
   stimuli: process
      constant PATH: string(1 to 21) := "file/ir/testcases.txt";
      ---------------------------------------------------------------
      file testcases:    text;   
      variable testcase: line;
      variable keycode:  string(1 to 8); -- String indexes start from 1
      variable ir_tx:    std_logic_vector(31 downto 0); -- TL1838's output
      -- Constants for NEC protocol timing
      constant NEC_START_LOW:    time := 450_000 * CLK_PERIOD; -- 9 ms 
      constant NEC_START_HIGH:   time := NEC_START_LOW / 2; -- 4.5 ms
      constant NEC_LOW_PULSE:    time := 28110 * CLK_PERIOD; -- 562.2 uS
      constant NEC_HIGH_PULSE_0: time := NEC_LOW_PULSE;     
      constant NEC_HIGH_PULSE_1: time := 84350 * CLK_PERIOD; -- 1.687 ms
   begin
      wait until rst_n = '1';
      
      -- Read test inputs (keycodes) from the file with the testcases. 
      file_open(testcases,PATH,read_mode);
      
      while not endfile(testcases) loop
         readline(testcases,testcase);
         read(testcase,keycode);
         
         -- Convert test inputs (keycodes) to the binary form of the 
         -- actual signals to be transmitted by the IR detector (TL1838). 
         ir_tx(31 downto 28) := char2slv(keycode(1));
         ir_tx(27 downto 24) := char2slv(keycode(2));        
         ir_tx(23 downto 20) := char2slv(keycode(3));
         ir_tx(19 downto 16) := char2slv(keycode(4));
         ir_tx(15 downto 12) := char2slv(keycode(5));
         ir_tx(11 downto 8)  := char2slv(keycode(6));
         ir_tx(7 downto  4)  := char2slv(keycode(7));
         ir_tx(3 downto  0)  := char2slv(keycode(8));
         
         -- Simulate transmission of IR detector's output signal to the  
         -- IR decoder module (FPGA). Timing signals are generated here.
         -- The NEC protocol is implemented here:
         -- 0. 9 ms low pulse, then 4.5 ms high pulse (before actual data)
         -- 1. Logic '1' = 562.2 uS low pulse followed by 1.687 ms high pulse
         -- 2. Logic '0' = 562.2 uS low pulse followed by 562.2 uS high pulse
         
         -- Initial signals from the IR detector before real data arrives
         ir <= '0';
         wait for NEC_START_LOW;
         ir <= '1';
         wait for NEC_START_HIGH;
         
         -- Real data from the IR detector to be decoded
         for i in 31 downto 0 loop
            if ir_tx(i) = '0' then
               ir <= '0';
               wait for NEC_LOW_PULSE;
               ir <= '1';
               wait for NEC_HIGH_PULSE_0;
               
            else
               ir <= '0';
               wait for NEC_LOW_PULSE;
               ir <= '1';
               wait for NEC_HIGH_PULSE_1;
            end if;
         end loop;
         
         -- End of data transmission from IR detector to IR decoder
         ir <= '0';
         wait for NEC_LOW_PULSE;
         ir <= '1';
         
         wait until done = '1';
         wait until done = '0';
         wait for COMMS_INTERVAL;         
      end loop;
      
      file_close(testcases);
      wait;
   end process;
   
   output_verification: process
      constant PATH_1: string(1 to 28) := "file/ir/expected_outputs.txt";
      constant PATH_2: string(1 to 26) := "file/ir/status_reports.txt";
      ---------------------------------------------------------------
      file expected_outputs:    text; 
      file status_reports:      text;       
      variable expected_output: line;
      variable status_report:   line;
      variable keycode:         string(1 to 4);
      variable data_str:        string(1 to 4); 
      variable status:          string(1 to 4);
      variable pass_count:      integer := 0;
      variable fail_count:      integer := 0;     
   begin
      wait until rst_n = '1';
      file_open(expected_outputs,PATH_1,read_mode);
      file_open(status_reports,PATH_2,write_mode);
      
      while not endfile(expected_outputs) loop
         readline(expected_outputs,expected_output);
         read(expected_output,keycode);
         
         wait until done = '1';

         -- Convert data output from UUT to string format
         data_str(1) := slv2char(data_out(15 downto 12));
         data_str(2) := slv2char(data_out(11 downto 8));
         data_str(3) := slv2char(data_out(7 downto 4));
         data_str(4) := slv2char(data_out(3 downto 0));
         
         if data_str = keycode then
            status := "PASS";
            pass_count := pass_count + 1;
         else
            status := "FAIL";
            fail_count := fail_count + 1;
         end if;        
         
         -- Display test results on the console
         report "Expected: " 
                & keycode 
                & ", " 
                & "Got: " 
                & data_str 
                & ", " 
                & "Status: " 
                & status;
                
         -- Store test results in the status reports file      
         write(status_report,string'("Expected: "));
         write(status_report,string'(keycode));
         write(status_report,string'(", "));
         write(status_report,string'("Got: "));
         write(status_report,string'(data_str));
         write(status_report,string'(", "));
         write(status_report,string'("Status: "));
         write(status_report,string'(status));         
         writeline(status_reports,status_report);
         wait until done = '0';
         
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
   
end tl1838_decoder_behav;
