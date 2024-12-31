library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
library altera_mf;
use altera_mf.all;
use work.pkg.all;

entity sdram_uart_main is
   port(rst_n:     in std_logic;
        clk:       in std_logic;
        buttons:   in std_logic_vector(1 downto 0);
        dq:     inout std_logic_vector(DATA_WIDTH - 1 downto 0);  
        sclk:     out std_logic;
        cke:      out std_logic;
        cs_n:     out std_logic;
        ras_n:    out std_logic;
        cas_n:    out std_logic;
        we_n:     out std_logic;
        addr:     out std_logic_vector(11 downto 00);
        bank:     out std_logic_vector(01 downto 00);
        udqm:     out std_logic;
        ldqm:     out std_logic;      
        uart_out: out std_logic);
end sdram_uart_main;

architecture sdram_uart_main_rtl of sdram_uart_main is
   -- Signals: PLL
   signal rst_inv:            std_logic;
   signal clk_pll:            std_logic;
   signal pll_locked:         std_logic;
   -- Signals: Buttons
   signal single_press:       std_logic_vector(1 downto 0);
   -- Signals: Data source
   signal read_enable:        std_logic;
   signal data_source_out:    std_logic_vector(DATA_WIDTH - 1 downto 0);
   -- Signals: SDRAM controller
   signal start:              std_logic; 
   signal enable_write_mode:  std_logic;
   signal enable_read_mode:   std_logic;
   signal incoming_data:      std_logic_vector(DATA_WIDTH - 1 downto 0); 
   signal outgoing_data:      std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal enable_transmitter: std_logic; 
   signal enable_receiver:    std_logic;  
   -- Signals: FIFO main logic
   signal writer_valid:       std_logic;
   signal reader_ready:       std_logic;
   signal fifo_data_in:       std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal fifo_data_out:      std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal enable_reader:      std_logic;
   -- Signals: UART transmitter
   signal enable_uart:        std_logic;
   signal uart_data_in:       std_logic_vector(7 downto 0);
   signal uart_data_out:      std_logic;
   signal uart_ready:         std_logic;  
begin
   -- Internal connections
   rst_inv           <=   not rst_n;
   read_enable       <=   enable_transmitter;
   start             <=   pll_locked;
   enable_write_mode <=   single_press(0);
   enable_read_mode  <=   single_press(1);
   incoming_data     <=   data_source_out;
   writer_valid      <=   enable_receiver;
   reader_ready      <=   uart_ready;
   fifo_data_in      <=   outgoing_data;
   enable_uart       <=   enable_reader;
   uart_data_in      <=   fifo_data_out(7 downto 0);
   
   -- Instantiations
   pll: entity altera_mf.pll(syn)
   port map(areset   => rst_inv, 
            inclk0   => clk, 
            c0       => clk_pll,
            locked   => pll_locked);
   
   button_write_sdram: entity work.button(button_rtl)
   generic map(CLK_FREQ       => BUTTON_CLK_FREQ_HZ,
               DEBOUNCE_DELAY => BUTTON_DEB_DELAY_MS)    
   port map(rst_n             => rst_n,
            clk               => clk_pll,
            button_in         => buttons(0),
            single_press      => single_press(0));
   
   button_read_sdram: entity work.button(button_rtl)
   generic map(CLK_FREQ       => BUTTON_CLK_FREQ_HZ,
               DEBOUNCE_DELAY => BUTTON_DEB_DELAY_MS)
   port map(rst_n             => rst_n,
            clk               => clk_pll,
            button_in         => buttons(1),
            single_press      => single_press(1)); 
   
   data_source: entity work.data_source(data_source_rtl)
   generic map(ADDR_WIDTH => ROM_ADDR_WIDTH,
               DATA_WIDTH => ROM_DATA_WIDTH)
   port map(rst_n         => rst_n,
            clk           => clk_pll,
            read_enable   => read_enable,
            data_out      => data_source_out);
   
   sdram_controller: entity work.sdram_controller(sdram_controller_rtl)
   generic map(CLK_FREQ_MHZ    => SDRAM_CLK_FREQ_MHZ,
               PWR_DELAY_NS    => SDRAM_INIT_DELAY_NS,
               CAS_LATENCY     => SDRAM_CAS_LATENCY,
               MAX_ROWS        => SDRAM_MAX_ROWS,
               MAX_COLS        => SDRAM_MAX_COLS,
               DATA_WIDTH      => SDRAM_DATA_WIDTH)
   port map(rst_n              => rst_n,
            clk                => clk_pll,
            start              => start, 
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

   fifo_main: entity work.fifo_main(fifo_main_rtl)
   generic map(ADDR_WIDTH  => FIFO_ADDR_WIDTH,
               DATA_WIDTH  => FIFO_DATA_WIDTH)
   port map(rst_n          => rst_n,
            clk            => clk_pll,
            writer_valid   => writer_valid,
            reader_ready   => reader_ready,
            data_in        => fifo_data_in,
            data_out       => fifo_data_out,
            enable_reader  => enable_reader);

   uart_tx: entity work.uart_tx(uart_tx_rtl)
   generic map(BAUD_RATE  => UART_BAUD_RATE,
               CLK_FREQ   => UART_CLK_FREQ_HZ)
   port map(rst_n         => rst_n,
            clk           => clk_pll,
            enable_uart   => enable_uart,
            data_in       => uart_data_in,
            data_out      => uart_out,
            ready         => uart_ready);
   
end sdram_uart_main_rtl;