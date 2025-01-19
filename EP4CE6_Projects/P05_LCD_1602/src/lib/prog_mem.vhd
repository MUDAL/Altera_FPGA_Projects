library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- The Program memory contains instructions (data and code) to drive the LCD
-- The MSB of the 9-bit instruction is the register select (RS) ...
-- bit for the LCD, while the remaining 8 bits (ASCII) are for the data pins.  
entity prog_mem is
   generic(ADDR_WIDTH: integer := 4);
   
   port(addr:         in std_logic_vector(ADDR_WIDTH - 1 downto 0);
        instruction: out std_logic_vector(8 downto 0));
end prog_mem;

architecture prog_mem_rtl of prog_mem is
   constant RS_CODE: std_logic := '0';
   constant RS_DATA: std_logic := '1';
   type rom_t is array(0 to 2**ADDR_WIDTH - 1) of std_logic_vector(8 downto 0);
   ------------------------------------------------------------------
   signal rom: rom_t := (0 =>  RS_DATA & x"48",      -- H
                         1 =>  RS_DATA & x"45",      -- E
                         2 =>  RS_DATA & x"4C",      -- L
                         3 =>  RS_DATA & x"4C",      -- L
                         4 =>  RS_DATA & x"4F",      -- O
                         5 =>  RS_DATA & x"20",      -- [SPACE]
                         6 =>  RS_DATA & x"57",      -- W
                         7 =>  RS_DATA & x"4F",      -- O
                         8 =>  RS_DATA & x"52",      -- R
                         9 =>  RS_DATA & x"4C",      -- L
                         10 => RS_DATA & x"44",      -- D
                         11 => RS_CODE & x"C6",      -- [NEXT ROW, 7TH COLUMN]
                         12 => RS_DATA & x"52",      -- R
                         13 => RS_DATA & x"4A",      -- J
                         14 => RS_DATA & x"58",      -- X
                         others => (others => '0')); -- NULL
begin
   instruction <= rom(to_integer(unsigned(addr)));
end prog_mem_rtl;