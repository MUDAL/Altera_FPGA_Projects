library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

entity data_source is
   generic(ADDR_WIDTH: integer := ROM_ADDR_WIDTH;
           DATA_WIDTH: integer := ROM_DATA_WIDTH);
   
   port(rst_n:        in std_logic;
        clk:          in std_logic;
        read_enable:  in std_logic;
        data_out:    out std_logic_vector(DATA_WIDTH - 1 downto 0));
end data_source;

architecture data_source_rtl of data_source is
   type char_type is array(0 to 2**ADDR_WIDTH - 1) of
        std_logic_vector(7 downto 0);
   constant CHAR_TABLE: char_type := (00 => x"41",  -- A
                                      01 => x"42",  -- B
                                      02 => x"43",  -- C
                                      03 => x"44",  -- D
                                      04 => x"45",  -- E
                                      05 => x"46",  -- F
                                      06 => x"47",  -- G
                                      07 => x"48",  -- H
                                      08 => x"49",  -- I
                                      09 => x"4A",  -- J
                                      10 => x"4B",  -- K
                                      11 => x"4C",  -- L
                                      12 => x"4D",  -- M
                                      13 => x"4E",  -- N
                                      14 => x"0D",  -- CARRIAGE RETURN
                                      15 => x"0A",  -- LINE FEED
                                       
                                      16 => x"61",  -- a
                                      17 => x"62",  -- b
                                      18 => x"63",  -- c
                                      19 => x"64",  -- d
                                      20 => x"65",  -- e
                                      21 => x"66",  -- f
                                      22 => x"67",  -- g
                                      23 => x"68",  -- h
                                      24 => x"69",  -- i
                                      25 => x"6A",  -- j
                                      26 => x"6B",  -- k
                                      27 => x"6C",  -- l
                                      28 => x"6D",  -- m
                                      29 => x"6E",  -- n
                                      30 => x"0D",  -- CARRIAGE RETURN
                                      31 => x"0A",  -- LINE FEED
                                       
                                      32 => x"30",  -- 0
                                      33 => x"31",  -- 1
                                      34 => x"32",  -- 2
                                      35 => x"33",  -- 3
                                      36 => x"34",  -- 4
                                      37 => x"35",  -- 5
                                      38 => x"36",  -- 6
                                      39 => x"37",  -- 7
                                      40 => x"38",  -- 8
                                      41 => x"39",  -- 9
                                      42 => x"3A",  -- :
                                      43 => x"3B",  -- ;
                                      44 => x"3C",  -- <
                                      45 => x"3D",  -- =
                                      46 => x"0D",  -- CARRIAGE RETURN 
                                      47 => x"0A",  -- LINE FEED
                                       
                                      48 => x"4F",  -- O
                                      49 => x"50",  -- P
                                      50 => x"51",  -- Q
                                      51 => x"52",  -- R
                                      52 => x"53",  -- S
                                      53 => x"54",  -- T
                                      54 => x"55",  -- U
                                      55 => x"56",  -- V
                                      56 => x"57",  -- W
                                      57 => x"58",  -- X
                                      58 => x"59",  -- Y
                                      59 => x"5A",  -- Z
                                      60 => x"79",  -- y
                                      61 => x"7A",  -- z
                                      62 => x"0D",  -- CARRIAGE RETURN
                                      63 => x"0A",  -- LINE FEED
                                      
                                      others => x"00");
                                      
   signal addr_reg:  unsigned(ADDR_WIDTH - 1 downto 0);
   signal addr_next: unsigned(ADDR_WIDTH - 1 downto 0);
begin
   address_register: process(rst_n,clk)
   begin
      if rst_n = '0' then
         addr_reg <= (others => '0');
      elsif rising_edge(clk) then
         addr_reg <= addr_next;
      end if;
   end process;
   
   addr_next <= addr_reg + 1 when read_enable = '1' else addr_reg;
   
   data_out <= x"00" & CHAR_TABLE(to_integer(addr_reg));
   
end data_source_rtl;