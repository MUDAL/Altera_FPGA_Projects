library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pkg.all;
use work.pack_tb.all;

entity frame_capture_main_tb is
end frame_capture_main_tb;

architecture frame_capture_main_behav of frame_capture_main_tb is
   -- Camera's constants
   constant T_P:        time    := 2 * 40 ns; -- (25 MHz pixel clock. T_PCLK = 40 ns)
   constant T_LINE:     time    := 784 * T_P; 
   constant MAX_LINES:  integer := 480;
   ------------------------------------------------------------------
   signal rst_n:                  std_logic;
   signal clk:                    std_logic := '0';
   -- Camera interface
   signal cam_enable:             std_logic := '0';
   signal cam_data_in:            std_logic_vector(7 downto 0) := (others => '0');
   signal cam_vsync:              std_logic := '0';
   signal href:                   std_logic := '0';
   signal pclk:                   std_logic := '0';
   signal xclk:                   std_logic;
   signal fifo_write_enable:      std_logic;
   signal cam_data_out:           std_logic_vector(DATA_WIDTH - 1 downto 0);
   -- Camera FIFO
   signal writer_valid:           std_logic;
   signal reader_ready:           std_logic;
   signal cam_fifo_data_in:       std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal cam_fifo_data_out:      std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal enable_reader:          std_logic;  
   -- SDRAM model
   signal sdram_start:            std_logic := '0';
   signal enable_write_mode:      std_logic;
   signal enable_read_mode:       std_logic; 
   signal enable_transmitter:     std_logic;
   signal enable_receiver:        std_logic;
   signal sdram_data_in:          unsigned(DATA_WIDTH - 1 downto 0);
   signal sdram_data_out:         std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal sdram_done:             std_logic;
   -- VGA FIFO
   signal vga_fifo_writer_valid:  std_logic;
   signal vga_fifo_reader_ready:  std_logic;
   signal vga_fifo_data_in:       std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal vga_fifo_data_out:      std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal vga_fifo_enable_writer: std_logic;
   signal vga_fifo_enable_reader: std_logic;   
   -- VGA
   signal vga_enable:             std_logic := '0';
   signal vga_data_in:            std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal fifo_read_enable:       std_logic;
   signal vga_hsync:              std_logic;
   signal vga_vsync:              std_logic;
   signal vga_rgb:                std_logic_vector(DATA_WIDTH - 1 downto 0);   
begin
   -- Join internal signals together
   writer_valid          <= fifo_write_enable;
   cam_fifo_data_in      <= cam_data_out;
   reader_ready          <= enable_transmitter;
   sdram_data_in         <= unsigned(cam_fifo_data_out);
   enable_write_mode     <= enable_reader;
   enable_read_mode      <= vga_fifo_enable_writer;
   vga_fifo_writer_valid <= enable_receiver;
   vga_fifo_reader_ready <= fifo_read_enable;
   vga_fifo_data_in      <= sdram_data_out;
   vga_data_in           <= vga_fifo_data_out;
   vga_enable            <= vga_fifo_enable_reader;
   
   camera_interface: entity work.camera_interface(camera_interface_rtl)
   generic map(CLK_DIVISOR    => CAM_CLK_DIVISOR,
               DATA_WIDTH     => DATA_WIDTH)
   port map(rst_n             => rst_n,
            clk               => clk,
            enable            => cam_enable,
            data_in           => cam_data_in,
            vsync             => cam_vsync,
            href              => href,
            pclk              => pclk,
            xclk              => xclk,
            fifo_write_enable => fifo_write_enable,
            data_out          => cam_data_out);
   
   camera_fifo: entity work.fifo_main(fifo_main_rtl)
   generic map(ADDR_WIDTH => FIFO_ADDR_WIDTH,
               DATA_WIDTH => FIFO_DATA_WIDTH,
               FIFO_TYPE  => TYPE_CAM_FIFO)
   port map(rst_n         => rst_n,
            clk           => clk,
            writer_valid  => writer_valid,
            reader_ready  => reader_ready,
            data_in       => cam_fifo_data_in,
            data_out      => cam_fifo_data_out,
            enable_reader => enable_reader);
   
   sdram_model: entity work.sdram_model(sdram_model_behav)
   generic map(DEBUG_MSG       => SDRAM_DEBUG_ON,
               CLK_FREQ_MHZ    => SDRAM_CLK_FREQ_MHZ,
               PWR_DELAY_NS    => INIT_DELAY,
               MAX_ROWS        => MAX_ROWS,
               MAX_COLS        => MAX_COLS,
               DATA_WIDTH      => SDRAM_DATA_WIDTH) 
   port map(rst_n              => rst_n,
            clk                => clk,
            start              => sdram_start,
            enable_write_mode  => enable_write_mode,
            enable_read_mode   => enable_read_mode,
            data_in            => std_logic_vector(sdram_data_in),
            enable_transmitter => enable_transmitter,
            enable_receiver    => enable_receiver,
            data_out           => sdram_data_out,
            done               => sdram_done);
   
   vga_fifo: entity work.fifo_main(fifo_main_rtl)
   generic map(ADDR_WIDTH => FIFO_ADDR_WIDTH,
               DATA_WIDTH => FIFO_DATA_WIDTH,
               FIFO_TYPE  => TYPE_VGA_FIFO)
   port map(rst_n         => rst_n,
            clk           => clk,
            writer_valid  => vga_fifo_writer_valid,
            reader_ready  => vga_fifo_reader_ready,
            data_in       => vga_fifo_data_in,
            data_out      => vga_fifo_data_out,
            enable_writer => vga_fifo_enable_writer,
            enable_reader => vga_fifo_enable_reader); 
   
   vga_main: entity work.vga_main(vga_main_rtl)
   generic map(DATA_WIDTH    => DATA_WIDTH)
   port map(rst_n            => rst_n,
            clk              => clk,
            enable           => vga_enable,
            data_in          => vga_data_in,
            fifo_read_enable => fifo_read_enable,
            hsync            => vga_hsync,
            vsync            => vga_vsync,
            rgb              => vga_rgb); 
   
   -- Reset generation
   rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process;
   
   activate_camera_interface: process
   begin
      wait until rst_n = '1';
      wait for 10 * CLK_PERIOD;
      cam_enable <= '1';
      wait for 10 * CLK_PERIOD;
      cam_enable <= '0';
      wait;
   end process;
   
   start_sdram_model: process
   begin
      wait until rst_n = '1';
      wait for 5 * CLK_PERIOD;
      sdram_start <= '1';
      wait;
   end process;
   
   cam_vsync_generator: process
   begin
      cam_vsync <= '1';
      wait for 3 * T_LINE;
      cam_vsync <= '0';
      wait for 507 * T_LINE;
   end process;
   
   href_generator: process
   begin
      wait until cam_vsync = '1';
      wait until cam_vsync = '0';
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
   
   cam_data_stimulus: process
      variable test_data: unsigned(7 downto 0) := (others => '0');
   begin
      wait until href = '1';
      
      while true loop
         if href = '0' then
            exit;
         end if;
         
         cam_data_in <= std_logic_vector(test_data);
         wait until rising_edge(pclk);
         test_data := test_data + 1;
      end loop;
   end process;
   
   output_verification: process
      constant PATH_1: string(1 to 21) := "file/verification.txt";
      ---------------------------------------------------------------
      file verification_file:     text;
      variable verification_line: line;
      variable vga_out_str:       string(1 to 2);
      variable byte_count_uns:    unsigned(19 downto 0) := (others => '0');
      variable byte_count_slv:    std_logic_vector(19 downto 0);
      variable byte_count_str:    string(1 to 5);
   begin
      report "[Begin]";
      wait until rst_n = '1';
      file_open(verification_file, PATH_1, write_mode);
      
      while true loop
         if sdram_done = '1' and byte_count_uns = 307200 then
            byte_count_slv    := std_logic_vector(byte_count_uns);
            byte_count_str(1) := slv2char(byte_count_slv(19 downto 16));
            byte_count_str(2) := slv2char(byte_count_slv(15 downto 12));
            byte_count_str(3) := slv2char(byte_count_slv(11 downto 08));
            byte_count_str(4) := slv2char(byte_count_slv(07 downto 04));
            byte_count_str(5) := slv2char(byte_count_slv(03 downto 00));   
            
            report "Total bytes = " & byte_count_str;
            exit;
         end if;
         
         wait until fifo_read_enable = '1';
         vga_out_str(1) := slv2char(vga_rgb(7 downto 4));
         vga_out_str(2) := slv2char(vga_rgb(3 downto 0));
         report "VGA output: " & vga_out_str;
         
         write(verification_line, string'(vga_out_str));
         writeline(verification_file, verification_line);
         byte_count_uns := byte_count_uns + 1;
      end loop;
      
      file_close(verification_file); 
      assert false report "Simulation done" severity failure;
      wait;
   end process;   
end frame_capture_main_behav;