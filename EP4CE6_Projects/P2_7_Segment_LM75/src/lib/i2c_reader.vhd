library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
LIBRARY altera_mf;
USE altera_mf.all;

--Module to read data from LM75 sensor via I2C.
-- From the LM75 datasheet, bits D15 to D7 contain the temperature ....
-- data to be obtained from the sensor i.e. 9 out of the 16 bits from ..
-- the sensor will be required. 

-- D15: sign bit, D7: 0.5 celsius.
-- D6 to D0: don't care 
-- This design is concerned with +ve temperatures only. 

entity i2c_reader is
	port(rst_n: in std_logic;
		  clk: in std_logic;
		  en: in std_logic;
		  sda: inout std_logic;
		  scl: out std_logic;
		  data_out: out std_logic_vector(8 downto 0); --9-bit data from LM75
		  done: out std_logic);
end i2c_reader;

architecture i2c_reader_rtl of i2c_reader is
	signal clk_out: std_logic;
begin
	
	scl <= clk_out;
	clock_100KHz: entity altera_mf.pll(syn)
	port map(areset => not rst_n, inclk0 => clk, c0 => clk_out);  
		
end i2c_reader_rtl;