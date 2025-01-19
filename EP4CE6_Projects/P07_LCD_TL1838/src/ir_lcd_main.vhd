library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;

-- FPGA project to decode NEC IR signals from a remote and display the 
-- decoded data on a 16x2 LCD.  

-- When the numeric keys on the IR remote are pressed, the equivalent 
-- numbers will be displayed on the LCD. The 'PREV' and 'NEXT' keys are  
-- used for respectively selecting the first and second rows for data 
-- display. Other keys on the remote will clear the LCD when pressed.

entity ir_lcd_main is
   port(rst_n: in std_logic;
        clk:   in std_logic;
        ir:    in std_logic;
        rs:   out std_logic;
        en:   out std_logic;
        rw:   out std_logic;
        db:   out std_logic_vector(7 downto 0);
        err:  out std_logic); -- Status LED (0: no error, 1: error)
end ir_lcd_main;

architecture ir_lcd_main_rtl of ir_lcd_main is
   signal data_out:       std_logic_vector(15 downto 0);
   signal ir_decoder_out: std_logic_vector(15 downto 0);
   signal done:           std_logic;
   signal lcd_rs_in:      std_logic;
   signal rs_in:          std_logic;
   signal lcd_data_in:    std_logic_vector(7 downto 0);
   signal d_in:           std_logic_vector(7 downto 0);
   signal rdy:            std_logic;
   signal en_bridge:      std_logic;
   signal err_int:        std_logic;
begin
   -- Internal connections
   ir_decoder_out <= data_out;
   rs_in          <= lcd_rs_in;
   d_in           <= lcd_data_in;
   en_bridge      <= done and rdy;
   err            <= err_int;
   
   ir_decoder: entity work.tl1838_decoder(tl1838_decoder_rtl)
   port map(rst_n    => rst_n, 
            clk      => clk, 
            ir       => ir,
            data_out => data_out, 
            done     => done, 
            err      => err_int);
   
   ir_lcd_bridge: entity work.tl1838_lcd_interface(tl1838_lcd_interface_rtl)
   port map(en             => en_bridge, 
            ir_decoder_out => ir_decoder_out, 
            lcd_rs_in      => lcd_rs_in, 
            lcd_data_in    => lcd_data_in);
         
   lcd: entity work.lcd_driver(lcd_driver_rtl)
   port map(rst_n => rst_n, 
            clk   => clk, 
            rs_in => rs_in, 
            d_in  => d_in,
            rs    => rs, 
            en    => en, 
            rw    => rw, 
            db    => db, 
            rdy   => rdy);
            
end ir_lcd_main_rtl;
