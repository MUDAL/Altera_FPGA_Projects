library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- VGA synchronization circuit adapted from Pong P. Chu's book:
-- FPGA Prototyping By VHDL Examples (Xilinx Spartan-3 Version),  
-- Chapter 12 (Page 264)

entity vga_sync is
   port(rst_n:        in std_logic;
        clk:          in std_logic;
        hsync:       out std_logic;
        vsync:       out std_logic;
        valid_pixel: out std_logic;
        pix_tick:    out std_logic;
        pixel_x:     out std_logic_vector(9 downto 0);
        pixel_y:     out std_logic_vector(9 downto 0));
end vga_sync;

architecture vga_sync_rtl of vga_sync is
   -- VGA 640-by-480 sync parameters
   constant HD: integer := 640; -- Horizontal display area
   constant HF: integer := 16;  -- H. front porch 
   constant HB: integer := 48;  -- H. back porch 
   constant HR: integer := 96;  -- H. retrace
   constant HT: integer := HD + HF + HB + HR; -- Total pixels per line (800)
   constant VD: integer := 480; -- Vertical display area 
   constant VF: integer := 10;  -- V. front porch 
   constant VB: integer := 33;  -- V. back porch 
   constant VR: integer := 2;   -- V. retrace 
   constant VT: integer := VD + VF + VB + VR; -- Total number of lines (525)
   -- Mod-2 counter 
   signal mod2_reg:  std_logic;
   signal mod2_next: std_logic; 
   -- Sync counters 
   signal h_count_reg:  unsigned(9 downto 0); 
   signal h_count_next: unsigned(9 downto 0); 
   signal v_count_reg:  unsigned(9 downto 0); 
   signal v_count_next: unsigned(9 downto 0);   
   -- Output buffer
   signal h_sync_reg:  std_logic; 
   signal h_sync_next: std_logic;   
   signal v_sync_reg:  std_logic; 
   signal v_sync_next: std_logic; 
   -- Status signals
   signal h_end:      std_logic; 
   signal v_end:      std_logic; 
   signal pixel_tick: std_logic; 
begin
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         mod2_reg    <= '0';
         h_count_reg <= (others => '0');        
         v_count_reg <= (others => '0');
         h_sync_reg  <= '0';         
         v_sync_reg  <= '0';
      elsif rising_edge(clk) then
         mod2_reg    <= mod2_next;
         h_count_reg <= h_count_next;        
         v_count_reg <= v_count_next;
         h_sync_reg  <= h_sync_next;       
         v_sync_reg  <= v_sync_next;
      end if;
   end process;
   
   -- Mod-2 circuit to generate 25 MHz enable tick
   mod2_next <= not mod2_reg;
   
   -- 25 MHz pixel tick
   pixel_tick <= mod2_reg;
   
   -- Status (end of : horizontal counter = 799, vertical counter = 524)
   h_end <= '1' when h_count_reg = (HT - 1) else '0';
   v_end <= '1' when v_count_reg = (VT - 1) else '0';

   -- Mod-800 horizontal sync counter
   hsync_counter: process(h_count_reg,h_end,pixel_tick)
   begin
      if pixel_tick = '1' then -- 25 MHz tick
         if h_end = '1' then
            h_count_next <= (others => '0');
         else
            h_count_next <= h_count_reg + 1;
         end if;
      else
         h_count_next <= h_count_reg;
      end if;
   end process;
   
   -- Mod-525 vertical sync counter
   vsync_counter: process(v_count_reg,h_end,v_end,pixel_tick)
   begin
      if pixel_tick = '1' and h_end = '1' then
         if v_end = '1' then
            v_count_next <= (others => '0');
         else
            v_count_next <= v_count_reg + 1;
         end if;
      else
         v_count_next <= v_count_reg;
      end if;
   end process;
   
   -- Horizontal and vertical sync
   h_sync_next <= '0' when (h_count_reg >= (HD + HF))          -- 656
                       and (h_count_reg <= (HD + HF + HR - 1)) -- 751
          else    '1';
    
   v_sync_next <= '0' when (v_count_reg >= (VD + VF))          -- 490
                       and (v_count_reg <= (VD + VF + VR - 1)) -- 491
          else    '1';   
     
   valid_pixel <= '1' when (h_count_reg < HD) and (v_count_reg < VD) 
          else    '0';
      
   -- Output signals
   hsync    <= h_sync_reg;
   vsync    <= v_sync_reg;
   pixel_x  <= std_logic_vector(h_count_reg);
   pixel_y  <= std_logic_vector(v_count_reg);
   pix_tick <= pixel_tick;
   
end vga_sync_rtl;
