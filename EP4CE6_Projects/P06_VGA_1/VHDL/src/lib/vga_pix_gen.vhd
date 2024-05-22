library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.img_pkg.all;

-- Pixel generation / Image display module

entity vga_pix_gen is
   port(rst_n: in std_logic;
        clk: in std_logic;
        p_tick: in std_logic; --25 MHz pixel tick
        valid_pixel: in std_logic; --Valid pixels for entire VGA screen
        pixel_x: in std_logic_vector(9 downto 0);
        pixel_y: in std_logic_vector(9 downto 0);
        rgb_out: out std_logic_vector(2 downto 0));
end vga_pix_gen;

architecture vga_pix_gen_rtl of vga_pix_gen is
   signal pix_x: unsigned(9 downto 0); 
   signal pix_y: unsigned(9 downto 0);
   signal addr_reg: unsigned(17 downto 0); 
   signal addr_next: unsigned(17 downto 0);
   signal data_out: std_logic_vector(0 downto 0);
   signal valid_img: std_logic; --signifies valid image pixels
   signal en: std_logic;
begin
   bitmap_memory: entity work.bitmap_mem(bitmap_mem_rtl)
   port map(clk => clk, en => en, address => std_logic_vector(addr_reg), 
            data_out => data_out);

   pix_x <= unsigned(pixel_x);
   pix_y <= unsigned(pixel_y);
   valid_img <= '1' when pix_x < IMG_WIDTH and pix_y < IMG_HEIGHT else '0';   
   en <= valid_img and p_tick;            
            
   address_register: process(rst_n,clk)
   begin
      if rst_n = '0' then
         addr_reg <= (others => '0');
      elsif rising_edge(clk) then
         addr_reg <= addr_next;
      end if;  
   end process;
   
   --Increment address using pixel tick rate and valid image boundary
   address_adder: process(en,addr_reg)
   begin
      addr_next <= addr_reg;
      if en = '1' then
         if addr_reg < to_unsigned(ROM_DEPTH - 1,addr_reg'length) then
            addr_next <= addr_reg + 1;
         else
            addr_next <= (others => '0');
         end if;
      end if;  
   end process;
                      
   display: process(valid_pixel,valid_img,data_out)
   begin
      if valid_pixel = '1' then
         if valid_img = '1' then
            rgb_out(2) <= data_out(0);
            rgb_out(1) <= data_out(0);
            rgb_out(0) <= data_out(0);        
         else
            rgb_out <= "001"; --Display blue
         end if;
      else
         rgb_out <= "000"; --Black
      end if;
   end process;
end vga_pix_gen_rtl;
