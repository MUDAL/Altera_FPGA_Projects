library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity spi_tx_tb is
end spi_tx_tb;

architecture spi_tx_behav of spi_tx_tb is
   -- The ILI9341 TFT display has a resolution of 240x320 pixels i.e.
   -- Total number of pixels = 76800. We're interested in a 16 bits/pixel
   -- configuration, hence total number of bits = 1228800 (153600 bytes).
   constant TOTAL_BYTES: integer := 153600;
   constant PLL_PERIOD:  time    := 10 * CLK_PERIOD;
   ------------------------------------------------------------------
   signal rst_n:   std_logic;
   signal clk:     std_logic := '0';
   signal en:      std_logic := '0';
   signal colour:  std_logic_vector(1 downto 0);
   signal led:     std_logic;
   signal sck:     std_logic;
   signal mosi:    std_logic;
   signal dc:      std_logic;
   signal d_rst_n: std_logic;
   signal cs:      std_logic;
   signal rdy:     std_logic;
begin
   uut: entity work.spi_tx(spi_tx_rtl)
   generic map(CLK_FREQ  => 5_000_000)
   port map(rst_n        => rst_n, 
            clk          => clk, 
            en           => en, 
            colour       => colour, 
            led          => led, 
            sck          => sck,
            mosi         => mosi, 
            dc           => dc,
            d_rst_n      => d_rst_n,
            cs           => cs,
            rdy          => rdy);
   
   -- Reset generation
   rst_n <= '0', '1' after 2 * PLL_PERIOD;
   
   clock_generation: process
   begin
      wait for PLL_PERIOD / 2;
      clk <= not clk;
   end process;
   
   stimuli: process
      constant PATH: string(1 to 25) := "../file/spi/testcases.txt";
      ---------------------------------------------------------------
      file testcases:    text;   
      variable testcase: line;
      variable data_str: string(1 to 1);
      variable data_slv: std_logic_vector(3 downto 0);   
   begin
      wait until rst_n   = '1';
      wait until d_rst_n = '0';
      wait until d_rst_n = '1';
      
      file_open(testcases,PATH,read_mode);
      
      while not endfile(testcases) loop
         readline(testcases,testcase);
         read(testcase,data_str);
         
         -- Convert test inputs to std_logic_vector (slv)
         data_slv(3 downto 0) := char2slv(data_str(1));        
         
         en <= '1';
         wait until rdy = '1';
         colour <= data_slv(1 downto 0);
         wait until rising_edge(clk);
         en <= '0';
      end loop;
      
      file_close(testcases);
      wait;       
   end process;
   
   output_verification: process
      constant PATH_1: string(1 to 32) := "../file/spi/expected_outputs.txt";
      constant PATH_2: string(1 to 30) := "../file/spi/status_reports.txt";
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
      wait until rst_n   = '1';
      wait until d_rst_n = '0';
      wait until d_rst_n = '1'; 
      wait until cs  = '0';       
      wait until rdy = '1' and en = '1';
      wait until rdy = '0';
      wait until dc  = '1';

      file_open(expected_outputs,PATH_1,read_mode);
      file_open(status_reports,PATH_2,write_mode);
   
      for i in 0 to TOTAL_BYTES - 1 loop
         readline(expected_outputs,expected_output);
         read(expected_output,expected_str);
     
         for j in 7 downto 0 loop
            wait until rising_edge(sck);
            data_slv(j) := mosi;
         end loop;
         
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
      
      wait for 2 * PLL_PERIOD;
      
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
end spi_tx_behav;
