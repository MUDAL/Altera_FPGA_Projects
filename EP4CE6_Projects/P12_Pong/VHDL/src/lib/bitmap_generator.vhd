library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Bitmap generator: Outputs bitmaps stored in bitmap memory.

entity bitmap_generator is
   generic(XPOS_BMP_L: integer := 10;
           XPOS_BMP_C: integer := 215;
           XPOS_BMP_R: integer := 329;
           YPOS_BMP:   integer := 100;
           XSTR_BMP:   integer := 210;
           YSTR_BMP:   integer := 71;
           MEM_DEPTH:  integer := 14910);
   port(rst_n: in std_logic;
        clk: in std_logic;
        enable: in std_logic;
        pix_tick: in std_logic;
        pixel_x: in std_logic_vector(9 downto 0);
        pixel_y: in std_logic_vector(9 downto 0);
        mem_bit: in std_logic_vector(0 downto 0);
        winner: in std_logic_vector(1 downto 0);
        mem_addr: out std_logic_vector(log_base2(MEM_DEPTH) downto 0);
        bitmap: out std_logic_vector(2 downto 0));
end bitmap_generator;

architecture bitmap_generator_rtl of bitmap_generator is
   type fsm is (ST_IDLE, ST_ENABLE);
   signal state: fsm;
   signal next_state: fsm;
   signal pix_x: unsigned(9 downto 0);
   signal pix_y: unsigned(9 downto 0);
   signal x_pos: unsigned(9 downto 0); 
   signal addr_reg: unsigned(log_base2(MEM_DEPTH) downto 0);
   signal addr_next: unsigned(log_base2(MEM_DEPTH) downto 0);
   signal colour: std_logic_vector(2 downto 0); 
   signal addr_en: std_logic;
   signal valid_bitmap: std_logic;
   signal valid_enable: std_logic;
   signal en_bitmap: std_logic;
begin
   next_state_logic: process(state,enable,x_pos,pix_x,pix_y)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if enable = '1' then
               if pix_x = x_pos - 1 and pix_y = YPOS_BMP then
                  next_state <= ST_ENABLE;
               end if;
            end if;
         when ST_ENABLE =>
      end case;
   end process;
   
   state_register: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state <= ST_IDLE;
      elsif rising_edge(clk) then
         state <= next_state;
      end if;
   end process;
   
   -- Moore output
   valid_enable <= enable when state = ST_ENABLE else '0';
   
   -- Pixel counters
   pix_x <= unsigned(pixel_x);
   pix_y <= unsigned(pixel_y);
   
   -- Set starting x-coordinate of the bitmap
   x_pos <= to_unsigned(XPOS_BMP_L,x_pos'length) when winner = "01"
    else    to_unsigned(XPOS_BMP_R,x_pos'length) when winner = "10"
    else    to_unsigned(XPOS_BMP_C,x_pos'length);
   
   valid_bitmap <= '1' when pix_x >= x_pos
                        and pix_y >= YPOS_BMP 
                        and pix_x <  x_pos + XSTR_BMP
                        and pix_y <  YPOS_BMP + YSTR_BMP
           else    '0';
   
   en_bitmap <= valid_enable and valid_bitmap;
   
   addr_en <= pix_tick and en_bitmap;   
   
   address_generator: process(addr_en,addr_reg)
   begin
      if addr_en = '1' then
         if addr_reg = MEM_DEPTH - 1 then
            addr_next <= (others => '0');
         else
            addr_next <= addr_reg + 1;
         end if;
      else
         addr_next <= addr_reg;
      end if;
   end process;
   
   colour <= '0' & mem_bit & '0'; -- In RGB sequence
   
   -- Outputs
   mem_addr <= std_logic_vector(addr_reg);
   bitmap <= colour when en_bitmap = '1' else "000";
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         addr_reg <= (others => '0');
      elsif rising_edge(clk) then
         addr_reg <= addr_next;
      end if;
   end process;
end bitmap_generator_rtl;