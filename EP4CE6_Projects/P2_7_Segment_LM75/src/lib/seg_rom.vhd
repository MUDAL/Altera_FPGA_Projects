library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--ROM: to map digits to signals to drive the 7 segment display.
--g,f,e,d,c,b,a are the individial LED segments.
entity seg_rom is
	port(addr: in std_logic_vector(3 downto 0);
        data_out: out std_logic_vector(6 downto 0));
end seg_rom;

architecture seg_rom_rtl of seg_rom is
	type rom_type is array(0 to 10) of std_logic_vector(6 downto 0);
	------------------------------"gfedcba"
	signal rom: rom_type := (0 => "1000000",
                            1 => "1111001",
                            2 => "0100100",
                            3 => "0110000",
                            4 => "0011001",
                            5 => "0010010",
                            6 => "0000010",
                            7 => "1111000",
                            8 => "0000000",
                            9 => "0010000",
									10 => "1000110");
begin
	data_out <= rom(to_integer(unsigned(addr)));
end seg_rom_rtl;