library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
library altera_mf;
use altera_mf.all;

-- Interfacing the EP4CE6 FPGA with an ILI9341 display module
-- and an HC06 Bluetooth module. 

-- This design uses a Synchronous FIFO buffer to queue data from  
-- the UART RX module. Whenever the UART RX module writes data  
-- faster than the SPI TX module can read, the FIFO holds the  
-- data till the SPI TX module is ready to read. This prevents 
-- data loss.
 
-- Reset type: Asynchronous
-- Main clock: 50 MHz
-- PLL  clock:  5 MHz
-- SPI  clock: PLL clock / 2

entity rgb_display is
   generic(BAUD_RATE: integer := 9600;
           SYS_FREQ:  integer := 50_000_000; -- MHz
           CLK_DIV:   integer := 10;
           FIFO_AW:   integer := 6;  -- Address Width
           FIFO_DW:   integer := 2); -- Data Width
           
   port(rst_n:    in std_logic;
        clk:      in std_logic;
        data_in:  in std_logic;
        led:     out std_logic;  -- Display's LED
        sck:     out std_logic;
        mosi:    out std_logic;
        dc:      out std_logic;  -- Register select (Data:1/Command:0)
        d_rst_n: out std_logic;  -- Display reset
        cs:      out std_logic); -- Chip select
end rgb_display;

architecture rgb_display_rtl of rgb_display is
   constant PLL_FREQ: integer := (SYS_FREQ / CLK_DIV);
   signal rst_inv:    std_logic;
   signal clk_pll:    std_logic;
   signal data_out:   std_logic_vector(7 downto 0);
   signal uart_done:  std_logic;
   signal enc_colour: std_logic_vector(1 downto 0);
   signal enc_done:   std_logic;
   signal d_out:      std_logic_vector(1 downto 0);
   signal r_oe:       std_logic;
   signal rdy:        std_logic;
begin
   rst_inv <= not rst_n;
   
   pll: entity altera_mf.pll(syn)
   port map(areset => rst_inv, 
            inclk0 => clk, 
            c0     => clk_pll);   
   
   uart_interface: entity work.uart_rx(uart_rx_rtl)
   generic map(BAUD_RATE => BAUD_RATE,
               CLK_FREQ  => PLL_FREQ)
   port map(rst_n        => rst_n, 
            clk          => clk_pll,  
            data_in      => data_in, 
            data_out     => data_out, 
            done         => uart_done);
            
   colour_encoder: entity work.encoder(encoder_rtl)
   port map(rst_n    => rst_n, 
            clk      => clk_pll, 
            en       => uart_done,
            ascii_in => data_out, 
            colour   => enc_colour,
            done     => enc_done);
   
   sync_fifo: entity work.fifo(fifo_rtl)
   generic map(AW   => FIFO_AW,
               DW   => FIFO_DW)
   port map(rst_n   => rst_n,
            clk     => clk_pll,
            w_valid => enc_done,
            r_ready => rdy,
            d_in    => enc_colour,
            d_out   => d_out,
            r_oe    => r_oe);
   
   spi_interface: entity work.spi_tx(spi_tx_rtl)
   generic map(CLK_FREQ => PLL_FREQ)
   port map(rst_n       => rst_n, 
            clk         => clk_pll, 
            en          => r_oe, 
            colour      => d_out, 
            led         => led, 
            sck         => sck,
            mosi        => mosi, 
            dc          => dc,
            d_rst_n     => d_rst_n,
            cs          => cs,
            rdy         => rdy);
end rgb_display_rtl;
