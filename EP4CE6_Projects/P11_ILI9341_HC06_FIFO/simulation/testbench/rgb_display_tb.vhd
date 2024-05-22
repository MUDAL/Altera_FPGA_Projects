library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;

entity rgb_display_tb is
end rgb_display_tb;

architecture rgb_display_behav of rgb_display_tb is
   -- The ILI9341 TFT display has a resolution of 240x320 pixels i.e.
   -- Total number of pixels = 76800. We're interested in a 16 bits/pixel
   -- configuration, hence total number of bits = 1228800 (153600 bytes).
   constant TOTAL_BYTES: integer := 153600;
   constant TEST_BYTES: integer := 10; -- To prevent long simulation
   constant CLK_DIV: integer := 10;
   constant PLL_PERIOD: time := CLK_DIV * CLK_PERIOD;
   constant FIFO_AW: integer := 6;  -- Address Width
   constant FIFO_DW: integer := 2;  -- Data Width  
   ------------------------------------------------------------------
   constant BAUD_RATE: integer := 9600;
   constant SYS_FREQ: integer := 50_000_000;
   constant PLL_FREQ: integer := SYS_FREQ / CLK_DIV; -- MHz
   -- Clocks per bit -> time
   constant BIT_TIME: time := PLL_PERIOD * (PLL_FREQ / BAUD_RATE);
   ------------------------------------------------------------------
   signal rst_n: std_logic;
   signal clk: std_logic := '0';
   signal data_in: std_logic := '1';
   signal led: std_logic;
   signal sck: std_logic;
   signal mosi: std_logic;
   signal dc: std_logic;
   signal d_rst_n: std_logic;
   signal cs: std_logic;
   signal rdy: std_logic := '0';
   signal done: std_logic := '0';
begin
   uut: entity work.rgb_display(rgb_display_rtl)
   generic map(BAUD_RATE => BAUD_RATE,
               SYS_FREQ => SYS_FREQ,
               CLK_DIV => CLK_DIV,
               FIFO_AW => FIFO_AW,
               FIFO_DW => FIFO_DW)
   port map(rst_n => rst_n,
            clk => clk,
            data_in => data_in,
            led => led,
            sck => sck,
            mosi => mosi,
            dc => dc,
            d_rst_n => d_rst_n,
            cs => cs);
            
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
      variable data_str: string(1 to 2);
      variable data_slv: std_logic_vector(7 downto 0);   
   begin
      wait until rst_n = '1';    
      file_open(testcases,PATH,read_mode);
      
      while not endfile(testcases) loop
         readline(testcases,testcase);
         read(testcase,data_str);

         wait until rdy = '1';
         wait for PLL_PERIOD;
         
         -- Convert test inputs to std_logic_vector (slv)
         data_slv(7 downto 4) := char2slv(data_str(1));
         data_slv(3 downto 0) := char2slv(data_str(2)); 
         
         data_in <= '0'; -- Start bit
         wait for PLL_PERIOD;
         wait for BIT_TIME;
         
         -- Simulate byte transfer to UART RX module
         for i in 0 to 7 loop
            data_in <= data_slv(i);
            wait for BIT_TIME;
         end loop;
         
         data_in <= '1'; -- Stop bit
         wait for BIT_TIME;
         done <= '1';
         wait for PLL_PERIOD;
         done <= '0';
      end loop;
      file_close(testcases);
      wait;    
   end process;

   output_verification: process
      constant PATH_1: string(1 to 30) := "file/main/expected_outputs.txt";
      constant PATH_2: string(1 to 28) := "file/main/status_reports.txt";
      file expected_outputs: text; 
      file status_reports: text;       
      variable expected_output: line;
      variable status_report: line;
      variable data_str: string(1 to 2);
      variable expected_str: string(1 to 2);
      variable data_slv: std_logic_vector(7 downto 0);      
      variable status: string(1 to 4); 
      variable pass_count: integer := 0;
      variable fail_count: integer := 0;  
   begin
      wait until rst_n = '1';
      wait until d_rst_n = '0';
      wait until d_rst_n = '1';
      wait until dc = '1'; -- BPP SETTING
      wait until dc = '0'; -- MEM ACCESS
      wait until dc = '1'; -- RGB SETTING
      wait until dc = '0'; -- SLEEP OUT
      wait for 16 * PLL_PERIOD; -- Wait for 'SLEEP OUT' command to be sent
      wait for 120 * PLL_PERIOD * (PLL_FREQ / 1_000); -- 120 ms
      wait for PLL_PERIOD;
      
      rdy <= '1';
      wait until done = '1';
      wait for 2 * PLL_PERIOD; -- 2 cycles after 'UART RX' is done
      wait for PLL_PERIOD;
      
      for i in 7 downto 0 loop
         wait until rising_edge(sck);
      end loop;
      
      file_open(expected_outputs,PATH_1,read_mode);
      file_open(status_reports,PATH_2,write_mode);
   
      for i in 0 to TEST_BYTES - 1 loop
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
         report "Expected: " & expected_str & ", " &
                "Got: " & data_str & ", " &
                "Status: " & status;
                
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
end rgb_display_behav;
