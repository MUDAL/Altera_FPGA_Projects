library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module to encode the ASCII output from the UART RX module
-- with fewer bits which will be used by the SPI TX module to
-- determine the colour that should be displayed on ILI9341 module.

entity encoder is
   port(rst_n: in std_logic;
        clk: in std_logic;
        en: in std_logic;
        ascii_in: in std_logic_vector(7 downto 0);
        colour: out std_logic_vector(1 downto 0);
        done: out std_logic);
end encoder;

architecture encoder_rtl of encoder is
   -- ASCII codes for uppercase R, G, and B
   constant ASCII_R_UPPER: std_logic_vector(7 downto 0) := x"52";
   constant ASCII_G_UPPER: std_logic_vector(7 downto 0) := x"47";
   constant ASCII_B_UPPER: std_logic_vector(7 downto 0) := x"42";
   -- ASCII codes for lowercase R, G, and B
   constant ASCII_R_LOWER: std_logic_vector(7 downto 0) := x"72";
   constant ASCII_G_LOWER: std_logic_vector(7 downto 0) := x"67";
   constant ASCII_B_LOWER: std_logic_vector(7 downto 0) := x"62";
   -- Colour codes (Red(R), Green(G), Blue(B), and White(W))
   constant R: std_logic_vector(1 downto 0) := "00";
   constant G: std_logic_vector(1 downto 0) := "01";
   constant B: std_logic_vector(1 downto 0) := "10";
   constant W: std_logic_vector(1 downto 0) := "11";
   ------------------------------------------------------------------
   signal en_reg: std_logic;
   signal ascii_reg: std_logic_vector(7 downto 0);
   signal colour_reg: std_logic_vector(1 downto 0);
   signal colour_next: std_logic_vector(1 downto 0);
   signal done_reg: std_logic;
   signal done_next: std_logic;
begin
   -- Encoder
   with ascii_reg select
      colour_next <= R when ASCII_R_UPPER | ASCII_R_LOWER,
                     G when ASCII_G_UPPER | ASCII_G_LOWER,
                     B when ASCII_B_UPPER | ASCII_B_LOWER,
                     W when others;
   
   done_next <= en_reg;
   
   buffered_outputs: colour <= colour_reg;
                     done <= done_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         en_reg <= '0';
         ascii_reg <= (others => '0');
         colour_reg <= (others => '0');
         done_reg <= '0';
      elsif rising_edge(clk) then
         en_reg <= en;
         ascii_reg <= ascii_in;
         colour_reg <= colour_next;
         done_reg <= done_next;
      end if;
   end process;
end encoder_rtl;
