library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pack_tb.all;
use work.pkg.all;

entity camera_interface_tb is
end camera_interface_tb;

architecture camera_interface_behav of camera_interface_tb is
   constant T_P:        time    := 2 * 40 ns; -- (25 MHz pixel clock. T_PCLK = 40 ns)
   constant T_LINE:     time    := 784 * T_P; 
   constant MAX_LINES:  integer := 480;
   ------------------------------------------------------------------
   signal rst_n:             std_logic;
   signal clk:               std_logic  := '0';
   signal enable:            std_logic  := '1';
   signal data_in:           std_logic_vector(7 downto 0) := (others => '0');
   signal vsync:             std_logic  := '0';
   signal href:              std_logic  := '0';
   signal pclk:              std_logic  := '0';
   signal xclk:              std_logic;
   signal fifo_write_enable: std_logic;
   signal data_out:          std_logic_vector(DATA_WIDTH - 1 downto 0);
begin
   uut: entity work.camera_interface(camera_interface_rtl)
   generic map(CLK_DIVISOR    => CAM_CLK_DIVISOR,
               DATA_WIDTH     => DATA_WIDTH)
   port map(rst_n             => rst_n,
            clk               => clk,
            enable            => enable,
            data_in           => data_in,
            vsync             => vsync,
            href              => href,
            pclk              => pclk,
            xclk              => xclk,
            fifo_write_enable => fifo_write_enable,
            data_out          => data_out);
   
   -- Reset generator
   rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process;   
   
   vsync_generator: process
   begin
      vsync <= '1';
      wait for 3 * T_LINE;
      vsync <= '0';
      wait for 507 * T_LINE;
   end process;
   
   href_generator: process
   begin
      wait until vsync = '1';
      wait until vsync = '0';
      wait for 17 * T_LINE;
      
      for i in 1 to MAX_LINES loop
         href <= '1';
         wait for 640 * T_P;
         href <= '0';
         wait for 144 * T_P;
      end loop;
   end process;
   
   pclk_generator: process
   begin
      pclk <= '1';
      wait for T_P / 4;
      pclk <= '0';
      wait for T_P / 4;
   end process;
   
   data_stimulus: process
      variable test_data: unsigned(7 downto 0) := (others => '0');
   begin
      data_in <= std_logic_vector(test_data);
      wait until rising_edge(pclk);
      test_data := test_data + 1;
   end process;
   
   output_report: process
   begin
      report "Simulation has started";
      wait until rst_n = '1';
      wait until href  = '1';

      -- Simulate data transfer from camera interface to camera FIFO
      while vsync = '0' loop
         wait until fifo_write_enable = '1' for 144 * T_P;
         report "Data Output: " 
                & slv2char(data_out(7 downto 4))
                & slv2char(data_out(3 downto 0));
      end loop;
      
      assert false report "Simulation done" severity failure;
      wait;
   end process;
end camera_interface_behav;