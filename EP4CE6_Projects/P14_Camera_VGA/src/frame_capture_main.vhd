library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
library altera_mf;
use altera_mf.all;
use work.pkg.all;

-- Top level design for FPGA-based image capture and display system.

entity frame_capture_main is
   port(rst_n:      in std_logic;
        clk:        in std_logic;
        button_in:  in std_logic;
        -- Camera signals
        data_in:    in std_logic_vector(7 downto 0); -- Grayscale data 
        vsync:      in std_logic;
        href:       in std_logic;
        pclk:       in std_logic; -- Pixel clock
        xclk:      out std_logic; -- System clock (25 MHz)      
        -- SDRAM signals
        dq:      inout std_logic_vector(DATA_WIDTH - 1 downto 0);  
        sclk:      out std_logic;
        cke:       out std_logic;
        cs_n:      out std_logic;
        ras_n:     out std_logic;
        cas_n:     out std_logic;
        we_n:      out std_logic;
        addr:      out std_logic_vector(11 downto 00);
        bank:      out std_logic_vector(01 downto 00);
        udqm:      out std_logic;
        ldqm:      out std_logic;
        -- VGA signals
        vga_hsync: out std_logic;
        vga_vsync: out std_logic;
        vga_rgb:   out std_logic_vector(DATA_WIDTH - 1 downto 0));
end frame_capture_main;

architecture frame_capture_main_rtl of frame_capture_main is
   -- Signals: PLL
   signal rst_inv:                std_logic;
   signal clk_pll:                std_logic;
   signal pll_locked:             std_logic;
   -- Signal: Button
   signal single_press:           std_logic; 
   -- Camera interface
   signal fifo_write_enable:      std_logic;
   signal cam_data_out:           std_logic_vector(DATA_WIDTH - 1 downto 0);  
   -- Camera FIFO
   signal writer_valid:           std_logic;
   signal reader_ready:           std_logic;
   signal cam_fifo_data_in:       std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal cam_fifo_data_out:      std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal enable_reader:          std_logic;  
   -- SDRAM controller
   signal enable_write_mode:      std_logic;
   signal enable_read_mode:       std_logic; 
   signal incoming_data:          std_logic_vector(DATA_WIDTH - 1 downto 0); 
   signal outgoing_data:          std_logic_vector(DATA_WIDTH - 1 downto 0);  
   signal enable_transmitter:     std_logic;
   signal enable_receiver:        std_logic;
   -- VGA FIFO
   signal vga_fifo_writer_valid:  std_logic;
   signal vga_fifo_reader_ready:  std_logic;
   signal vga_fifo_data_in:       std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal vga_fifo_data_out:      std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal vga_fifo_enable_writer: std_logic;
   signal vga_fifo_enable_reader: std_logic;  
   -- Grayscale circuit
   signal y_component:            std_logic_vector(7 downto 0);
   signal vga_grayscale:          std_logic_vector(DATA_WIDTH - 1 downto 0);  
   -- VGA
   signal vga_enable:             std_logic;
   signal vga_data_in:            std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal fifo_read_enable:       std_logic; 
begin
   -- Internal connections
   rst_inv               <= not rst_n;
   writer_valid          <= fifo_write_enable;
   cam_fifo_data_in      <= cam_data_out;
   reader_ready          <= enable_transmitter;
   enable_write_mode     <= enable_reader;
   enable_read_mode      <= vga_fifo_enable_writer;
   incoming_data         <= cam_fifo_data_out;
   vga_fifo_writer_valid <= enable_receiver;
   vga_fifo_reader_ready <= fifo_read_enable;
   vga_fifo_data_in      <= outgoing_data;
   y_component           <= vga_fifo_data_out(7 downto 0);
   vga_data_in           <= vga_grayscale;
   vga_enable            <= vga_fifo_enable_reader;
   
   -- Instantiations
   pll: entity altera_mf.pll(syn)
   port map(areset   => rst_inv, 
            inclk0   => clk, 
            c0       => clk_pll,
            locked   => pll_locked);
            
   button: entity work.button(button_rtl)
   generic map(CLK_FREQ       => BUTTON_CLK_FREQ_HZ,
               DEBOUNCE_DELAY => BUTTON_DEB_DELAY_MS)    
   port map(rst_n             => rst_n,
            clk               => clk_pll,
            button_in         => button_in,
            single_press      => single_press);          
            
   camera_interface: entity work.camera_interface(camera_interface_rtl)
   generic map(CLK_DIVISOR    => CAM_CLK_DIVISOR,
               DATA_WIDTH     => DATA_WIDTH)
   port map(rst_n             => rst_n,
            clk               => clk_pll,
            enable            => single_press,
            data_in           => data_in,
            vsync             => vsync,
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
            clk           => clk_pll,
            writer_valid  => writer_valid,
            reader_ready  => reader_ready,
            data_in       => cam_fifo_data_in,
            data_out      => cam_fifo_data_out,
            enable_reader => enable_reader);
            
   sdram_controller: entity work.sdram_controller(sdram_controller_rtl)
   generic map(CLK_FREQ_MHZ    => SDRAM_CLK_FREQ_MHZ,
               PWR_DELAY_NS    => SDRAM_INIT_DELAY_NS,
               MAX_ROWS        => SDRAM_MAX_ROWS,
               MAX_COLS        => SDRAM_MAX_COLS,
               DATA_WIDTH      => SDRAM_DATA_WIDTH)
   port map(rst_n              => rst_n,
            clk                => clk_pll,
            start              => pll_locked, 
            enable_write_mode  => enable_write_mode,
            enable_read_mode   => enable_read_mode,
            incoming_data      => incoming_data,
            outgoing_data      => outgoing_data,
            enable_transmitter => enable_transmitter,
            enable_receiver    => enable_receiver,
            dq                 => dq,  
            sclk               => sclk,
            cke                => cke,
            cs_n               => cs_n,
            ras_n              => ras_n,
            cas_n              => cas_n,
            we_n               => we_n,
            addr               => addr,
            bank               => bank,
            udqm               => udqm,
            ldqm               => ldqm);           
   
   vga_fifo: entity work.fifo_main(fifo_main_rtl)
   generic map(ADDR_WIDTH => FIFO_ADDR_WIDTH,
               DATA_WIDTH => FIFO_DATA_WIDTH,
               FIFO_TYPE  => TYPE_VGA_FIFO)
   port map(rst_n         => rst_n,
            clk           => clk_pll,
            writer_valid  => vga_fifo_writer_valid,
            reader_ready  => vga_fifo_reader_ready,
            data_in       => vga_fifo_data_in,
            data_out      => vga_fifo_data_out,
            enable_writer => vga_fifo_enable_writer,
            enable_reader => vga_fifo_enable_reader); 
   
   grayscale: entity work.grayscale_circuit(grayscale_circuit_rtl)
   port map(y_component   => y_component,
            vga_grayscale => vga_grayscale);
   
   vga_main: entity work.vga_main(vga_main_rtl)
   generic map(DATA_WIDTH    => DATA_WIDTH)
   port map(rst_n            => rst_n,
            clk              => clk_pll,
            enable           => vga_enable,
            data_in          => vga_data_in,
            fifo_read_enable => fifo_read_enable,
            hsync            => vga_hsync,
            vsync            => vga_vsync,
            rgb              => vga_rgb);             
end frame_capture_main_rtl;