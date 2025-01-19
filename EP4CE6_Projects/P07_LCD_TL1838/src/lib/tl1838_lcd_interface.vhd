library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module to interface the IR decoder design with the LCD driver design.  

entity tl1838_lcd_interface is
   port(en:             in std_logic;
        ir_decoder_out: in std_logic_vector(15 downto 0);
        lcd_rs_in:     out std_logic;
        lcd_data_in:   out std_logic_vector(7 downto 0));
end tl1838_lcd_interface;

architecture tl1838_lcd_interface_rtl of tl1838_lcd_interface is
   constant ASCII_NULL: std_logic_vector(7 downto 0) := x"00";
   -- From HD44780U datasheet (register select bits and ASCII for LCD)
   constant RS_CODE: std_logic := '0';
   constant RS_DATA: std_logic := '1';
   constant ASCII_0: std_logic_vector(7 downto 0) := x"30";
   constant ASCII_1: std_logic_vector(7 downto 0) := x"31";
   constant ASCII_2: std_logic_vector(7 downto 0) := x"32";
   constant ASCII_3: std_logic_vector(7 downto 0) := x"33";
   constant ASCII_4: std_logic_vector(7 downto 0) := x"34";
   constant ASCII_5: std_logic_vector(7 downto 0) := x"35";
   constant ASCII_6: std_logic_vector(7 downto 0) := x"36";
   constant ASCII_7: std_logic_vector(7 downto 0) := x"37";
   constant ASCII_8: std_logic_vector(7 downto 0) := x"38";
   constant ASCII_9: std_logic_vector(7 downto 0) := x"39";
   -- LCD instructions
   constant LCD_CLEAR: std_logic_vector(7 downto 0) := x"01";
   constant LCD_ROW_0: std_logic_vector(7 downto 0) := x"80";
   constant LCD_ROW_1: std_logic_vector(7 downto 0) := x"C0";
   -- Decoded data from IR detector for specific keys on the IR remote
   constant KEY_0:  std_logic_vector(15 downto 0) := x"6897";
   constant KEY_1:  std_logic_vector(15 downto 0) := x"30CF";
   constant KEY_2:  std_logic_vector(15 downto 0) := x"18E7";
   constant KEY_3:  std_logic_vector(15 downto 0) := x"7A85";
   constant KEY_4:  std_logic_vector(15 downto 0) := x"10EF";
   constant KEY_5:  std_logic_vector(15 downto 0) := x"38C7";
   constant KEY_6:  std_logic_vector(15 downto 0) := x"5AA5";
   constant KEY_7:  std_logic_vector(15 downto 0) := x"42BD";
   constant KEY_8:  std_logic_vector(15 downto 0) := x"4AB5";
   constant KEY_9:  std_logic_vector(15 downto 0) := x"52AD";
   constant K_PREV: std_logic_vector(15 downto 0) := x"22DD";
   constant K_NEXT: std_logic_vector(15 downto 0) := x"02FD";
begin
   interface_logic: process(en,ir_decoder_out)
   begin
      lcd_rs_in   <= RS_DATA;
      lcd_data_in <= ASCII_NULL;
      
      if en = '1' then
         case ir_decoder_out is
            when KEY_0 =>  lcd_data_in <= ASCII_0;
            when KEY_1 =>  lcd_data_in <= ASCII_1;
            when KEY_2 =>  lcd_data_in <= ASCII_2;
            when KEY_3 =>  lcd_data_in <= ASCII_3;
            when KEY_4 =>  lcd_data_in <= ASCII_4;
            when KEY_5 =>  lcd_data_in <= ASCII_5;
            when KEY_6 =>  lcd_data_in <= ASCII_6;
            when KEY_7 =>  lcd_data_in <= ASCII_7;
            when KEY_8 =>  lcd_data_in <= ASCII_8;
            when KEY_9 =>  lcd_data_in <= ASCII_9;
            when K_PREV =>
               lcd_rs_in <= RS_CODE;
               lcd_data_in <= LCD_ROW_0;
            when K_NEXT =>
               lcd_rs_in <= RS_CODE;
               lcd_data_in <= LCD_ROW_1;
            when others =>
               lcd_rs_in <= RS_CODE;
               lcd_data_in <= LCD_CLEAR;
         end case;
      end if;
      
   end process;
end tl1838_lcd_interface_rtl;

