library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity spi_receiver_tb is
end spi_receiver_tb;

architecture spi_receiver_behav of spi_receiver_tb is
   signal rst_n: std_logic;
   signal clk: std_logic := '0';
   signal mosi: std_logic;
   signal sck: std_logic := '0';
   signal cs: std_logic;
   signal rs_out: std_logic;
   signal en_out: std_logic;
   signal db_out: std_logic_vector(7 downto 0);
   signal done: std_logic;
begin
   uut: entity work.spi_receiver(spi_receiver_rtl)
   port map(rst_n => rst_n, clk => clk, mosi => mosi, sck => sck,
            cs => cs, rs_out => rs_out, en_out => en_out, 
            db_out => db_out, done => done);
   
   reset: rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process;
   
   cs_stimulus: cs <= '1', '0' after 5 * CLK_PERIOD;
   
   sck_stimulus: process
      constant SCK_PERIOD: time := 10 * CLK_PERIOD;
   begin
      wait until rst_n = '1';
      wait until cs = '0';
      while true loop
         wait for SCK_PERIOD / 2;
         sck <= not sck;
      end loop;
   end process;
   
   mosi_stimulus: process
      constant PATH: string(1 to 22) := "file/spi/testcases.txt";
      file testcases: text;   
      variable testcase: line;
      variable mosi_str: string(1 to 4);
      variable mosi_slv: std_logic_vector(15 downto 0);
   begin
      wait until rst_n = '1';
      wait until cs = '0' and sck = '0';
      file_open(testcases,PATH,read_mode);
      while not endfile(testcases) loop
         readline(testcases,testcase);
         read(testcase,mosi_str);
         
         -- Convert test inputs to std_logic_vector (slv)
         mosi_slv(15 downto 12) := char2slv(mosi_str(1));
         mosi_slv(11 downto 8)  := char2slv(mosi_str(2));
         mosi_slv(7 downto  4)  := char2slv(mosi_str(3));
         mosi_slv(3 downto  0)  := char2slv(mosi_str(4));
         
         -- Simulate MCU sending SPI data MSB first through MOSI line
         for i in 15 downto 0 loop
            wait until sck = '1';
            mosi <= mosi_slv(i);          
            wait until sck = '0'; 
         end loop;
         
         wait until done = '1';
         wait until done = '0';
      end loop;
      file_close(testcases);
      wait;
   end process;
   
   output_verification: process
      constant PATH_1: string(1 to 29) := "file/spi/expected_outputs.txt";
      constant PATH_2: string(1 to 27) := "file/spi/status_reports.txt";
      constant ZEROS: std_logic_vector(1 downto 0) := "00";
      file expected_outputs: text; 
      file status_reports: text;       
      variable expected_output: line;
      variable status_report: line;
      variable spi_data_out: string(1 to 3);
      variable data_str: string(1 to 3);
      variable status: string(1 to 4);
      variable pass_count: integer := 0;
      variable fail_count: integer := 0;
   begin
      wait until rst_n = '1';
      wait until cs = '0' and sck = '0';
      file_open(expected_outputs,PATH_1,read_mode);
      file_open(status_reports,PATH_2,write_mode);
      while not endfile(expected_outputs) loop
         readline(expected_outputs,expected_output);
         read(expected_output,spi_data_out);
         
         wait until done = '1';

         -- Convert data output from UUT to string format
         data_str(1) := slv2char(ZEROS & rs_out & en_out);
         data_str(2) := slv2char(db_out(7 downto 4));        
         data_str(3) := slv2char(db_out(3 downto 0));
         
         if data_str = spi_data_out then
            status := "PASS";
            pass_count := pass_count + 1;
         else
            status := "FAIL";
            fail_count := fail_count + 1;
         end if;        
         
         -- Display test results on the console
         report "Expected: " & spi_data_out & ", " &
                "Got: " & data_str & ", " &
                "Status: " & status;
                
         -- Store test results in the status reports file      
         write(status_report,string'("Expected: "));
         write(status_report,string'(spi_data_out));
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
   
end spi_receiver_behav;

