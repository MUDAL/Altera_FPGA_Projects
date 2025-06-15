library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity spi_lcd_main_tb is
end spi_lcd_main_tb;

architecture spi_lcd_main_behav of spi_lcd_main_tb is
   constant SCK_PERIOD: time := 10 * CLK_PERIOD;
   ------------------------------------------------------------------
   signal rst_n: std_logic;
   signal clk:   std_logic := '0';
   signal mosi:  std_logic;
   signal sck:   std_logic := '0';
   signal cs:    std_logic;
   signal rw:    std_logic;
   signal rs:    std_logic;
   signal en:    std_logic;
   signal db:    std_logic_vector(7 downto 0);
begin
   uut: entity work.spi_lcd_main(spi_lcd_main_rtl)
   port map(rst_n => rst_n, 
            clk   => clk, 
            mosi  => mosi, 
            sck   => sck,
            cs    => cs, 
            rw    => rw, 
            rs    => rs, 
            en    => en, 
            db    => db);
   
   -- Reset generation
   rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process;
   
   -- "Chip select" stimulus
   cs <= '1', '0' after 5 * CLK_PERIOD;
   
   sck_stimulus: process
   begin
      wait until rst_n = '1';
      wait until cs = '0';
      while true loop
         wait for SCK_PERIOD / 2;
         sck <= not sck;
      end loop;
   end process;
   
   mosi_stimulus: process
      constant PATH: string(1 to 26) := "../file/main/testcases.txt";
      ---------------------------------------------------------------
      file testcases:    text;   
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
      end loop;
      
      file_close(testcases);
      wait;
   end process;
   
   output_verification: process
      constant PATH_1:  string(1 to 33) := "../file/main/expected_outputs.txt";
      constant PATH_2:  string(1 to 31) := "../file/main/status_reports.txt";
      constant ZEROS:   std_logic_vector(1 downto 0) := "00";
      constant TIMEOUT: time := 17 * SCK_PERIOD;
      ---------------------------------------------------------------
      file expected_outputs:    text; 
      file status_reports:      text;       
      variable expected_output: line;
      variable status_report:   line;
      variable lcd_data_out:    string(1 to 3);
      variable data_str:        string(1 to 3);
      variable status:          string(1 to 4);
      variable pass_count:      integer := 0;
      variable fail_count:      integer := 0;
   begin
      wait until rst_n = '1';
      wait until cs = '0' and sck = '0';
      file_open(expected_outputs,PATH_1,read_mode);
      file_open(status_reports,PATH_2,write_mode);
      
      while not endfile(expected_outputs) loop
         readline(expected_outputs,expected_output);
         read(expected_output,lcd_data_out);
         
         wait on rs, en, db for TIMEOUT;

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
         report "Expected: " 
                & lcd_data_out 
                & ", " 
                & "Got: " 
                & data_str 
                & ", " 
                & "Status: " 
                & status;
                
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
   
end spi_lcd_main_behav;
