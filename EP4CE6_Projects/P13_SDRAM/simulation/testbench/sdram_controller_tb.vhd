library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;
use work.pack_tb.all;

entity sdram_controller_tb is
end sdram_controller_tb;

architecture sdram_controller_behav of sdram_controller_tb is
   signal rst_n:              std_logic;
   signal clk:                std_logic := '0';
   signal start:              std_logic := '1';
   signal enable_write_mode:  std_logic := '0';
   signal enable_read_mode:   std_logic := '0'; 
   signal enable_transmitter: std_logic;
   signal enable_receiver:    std_logic;
   signal data_in:            unsigned(DATA_WIDTH - 1 downto 0) := (others => '0');
   signal data_out:           std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal done:               std_logic;
   signal rows_written:       unsigned(log_base2(MAX_ROWS) downto 0) := (others => '0');
   signal rows_read:          unsigned(log_base2(MAX_ROWS) downto 0) := (others => '0');     
begin
   uut: entity work.sdram_model(sdram_model_behav)
   generic map(DEBUG_MSG       => SDRAM_DEBUG_ON,
               CLK_FREQ_MHZ    => SDRAM_CLK_FREQ_MHZ,
               PWR_DELAY_NS    => INIT_DELAY,
               CAS_LATENCY     => SDRAM_CAS_LATENCY,
               MAX_ROWS        => MAX_ROWS,
               MAX_COLS        => MAX_COLS,
               DATA_WIDTH      => SDRAM_DATA_WIDTH) 
   port map(rst_n              => rst_n,
            clk                => clk,
            start              => start,
            enable_write_mode  => enable_write_mode,
            enable_read_mode   => enable_read_mode,
            data_in            => std_logic_vector(data_in),
            enable_transmitter => enable_transmitter,
            enable_receiver    => enable_receiver,
            data_out           => data_out,
            done               => done);
   
   -- Reset generation
   rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process;            
   
   test_data_generation: process
   begin
      wait until enable_transmitter = '1';
      for i in 0 to MAX_COLS - 1 loop
         data_in <= data_in + 1;
         wait until rising_edge(clk);
      end loop;
      
   end process;
   
   rows_written_counter: process
   begin
      wait until enable_transmitter = '1';
      for i in 0 to MAX_COLS - 1 loop
         wait until rising_edge(clk);
      end loop;
      
      rows_written <= rows_written + 1;
   end process;
   
   rows_read_counter: process
   begin
      wait until enable_receiver = '1';
      for i in 0 to MAX_COLS - 1 loop
         wait until rising_edge(clk);
      end loop;
      
      rows_read <= rows_read + 1;
   end process;
   
   -- Logic to enable burst write
   enable_write_mode <= '1' when rows_written < MAX_ROWS else '0';
   
   -- Logic to enable burst read
   enable_read_mode  <= '1' when rows_written = MAX_ROWS
                             and rows_read    < MAX_ROWS 
               else     '0';
   
   simulation_control: process
   begin
      report "[Begin]";
      wait until rst_n = '1';
      wait until done  = '1';
      assert false report "Simulation done" severity failure;
      wait;
   end process;
end sdram_controller_behav;