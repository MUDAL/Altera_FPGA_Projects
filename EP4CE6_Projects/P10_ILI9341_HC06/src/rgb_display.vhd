library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
library altera_mf;
use altera_mf.all;

-- Interfacing the EP4CE6 FPGA with an ILI9341 display module
-- and an HC06 Bluetooth module. 

-- Limitation: This implementation doesn't use a FIFO to prevent data loss 
-- (this could happen when the UART RX module receives and decodes data 
-- faster than the SPI TX module can transmit). 
-- A custom ready/valid handshake is implemented to ensure that the UART 
-- RX wouldn't send data to the SPI TX until the SPI TX signifies that it
-- is ready.
 
-- Reset type: Asynchronous
-- Main clock: 50 MHz
-- PLL  clock:  2 MHz
-- SPI  clock:  1 MHz (PLL clock / 2)

entity rgb_display is
   port(rst_n: in std_logic;
        clk: in std_logic;
        data_in: in std_logic;
        led: out std_logic; -- Display's LED
        sck: out std_logic;
        mosi: out std_logic;
        dc: out std_logic; -- Register select (Data:1/Command:0)
        d_rst_n: out std_logic; -- Display reset
        cs: out std_logic); -- Chip select
end rgb_display;

architecture rgb_display_rtl of rgb_display is
   signal clk_pll: std_logic;
   signal en_uart: std_logic;
   signal data_out: std_logic_vector(7 downto 0);
   signal uart_done: std_logic;
   signal en_encoder: std_logic;
   signal ascii_in: std_logic_vector(7 downto 0);
   signal colour: std_logic_vector(1 downto 0);
   signal encoder_done: std_logic;
   signal en_spi: std_logic;
   signal rdy: std_logic;
begin
   en_uart <= rdy;
   en_encoder <= uart_done;
   ascii_in <= data_out;
   en_spi <= encoder_done;
   
   pll: entity altera_mf.pll(syn)
   port map(areset => not rst_n, 
            inclk0 => clk, 
            c0 => clk_pll);   
   
   uart_interface: entity work.uart_rx(uart_rx_rtl)
   port map(rst_n => rst_n, 
            clk => clk_pll, 
            en => en_uart, 
            data_in => data_in, 
            data_out => data_out, 
            done => uart_done);
            
   colour_encoder: entity work.encoder(encoder_rtl)
   port map(rst_n => rst_n, 
            clk => clk_pll, 
            en => en_encoder,
            ascii_in => ascii_in, 
            colour => colour,
            done => encoder_done);
   
   spi_interface: entity work.spi_tx(spi_tx_rtl)
   port map(rst_n => rst_n, 
            clk => clk_pll, 
            en => en_spi, 
            colour => colour, 
            led => led, 
            sck => sck,
            mosi => mosi, 
            dc => dc,
            d_rst_n => d_rst_n,
            cs => cs,
            rdy => rdy);
end rgb_display_rtl;
