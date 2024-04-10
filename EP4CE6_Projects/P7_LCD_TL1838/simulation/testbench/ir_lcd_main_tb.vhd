library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity ir_lcd_main_tb is
end ir_lcd_main_tb;

architecture ir_lcd_main_behav of ir_lcd_main_tb is
   constant LCD_EXEC_TIME: time := 1500 * CLK_PERIOD;
   -- Delay before injecting next stimulus to the UUT
   constant COMMS_INTERVAL: time := 10 * CLK_PERIOD;
   -- Signals
   signal rst_n: std_logic;
   signal clk: std_logic := '0';
   signal ir: std_logic;
   signal rs: std_logic;
   signal en: std_logic;
   signal rw: std_logic;
   signal db: std_logic_vector(7 downto 0);
   signal err: std_logic;
   signal done: std_logic := '0';
begin
   uut: entity work.ir_lcd_main(ir_lcd_main_rtl)
   port map(rst_n => rst_n, clk => clk, ir => ir,
            rs => rs, en => en, rw => rw, db => db, err => err);
            
   reset: rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process;
   
   stimuli: process
      constant PATH: string(1 to 23) := "file/main/testcases.txt";
      file testcases: text;   
      variable testcase: line;
      variable keycode: string(1 to 8); -- String indexes start from 1
      variable ir_tx: std_logic_vector(31 downto 0); -- TL1838's output
      -- Constants for NEC protocol timing
      constant NEC_START_LOW: time := 450_000 * CLK_PERIOD; -- 9 ms 
      constant NEC_START_HIGH: time := NEC_START_LOW / 2; -- 4.5 ms
      constant NEC_LOW_PULSE: time := 28110 * CLK_PERIOD; -- 562.2 uS
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
         
         done <= '0';
         
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
         
         done <= '1';
         wait for COMMS_INTERVAL;
      end loop;
      file_close(testcases);
      wait;
   end process;

   output_verification: process
      constant PATH_1: string(1 to 30) := "file/main/expected_outputs.txt";
      constant PATH_2: string(1 to 28) := "file/main/status_reports.txt";
      constant ZEROS: std_logic_vector(2 downto 0) := "000";
      file expected_outputs: text; 
      file status_reports: text;       
      variable expected_output: line;
      variable status_report: line;
      variable lcd_data_out: string(1 to 3);
      variable data_str: string(1 to 3);
      variable status: string(1 to 4);
   begin
      wait until rst_n = '1';
      file_open(expected_outputs,PATH_1,read_mode);
      file_open(status_reports,PATH_2,write_mode);
      while not endfile(expected_outputs) loop
         readline(expected_outputs,expected_output);
         read(expected_output,lcd_data_out);
         
         wait for LCD_EXEC_TIME;
         wait until done = '1';
         wait until en = '1';
         wait until en = '0';
         wait until rising_edge(clk);

         -- Convert data output from UUT to string format
         data_str(1) := slv2char(ZEROS & rs);
         data_str(2) := slv2char(db(7 downto 4));        
         data_str(3) := slv2char(db(3 downto 0));
         
         if data_str = lcd_data_out then
            status := "PASS";
         else
            status := "FAIL";
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
      file_close(expected_outputs);
      file_close(status_reports);
      assert false report "Simulation done" severity failure;
      wait;
   end process;   
end ir_lcd_main_behav;
