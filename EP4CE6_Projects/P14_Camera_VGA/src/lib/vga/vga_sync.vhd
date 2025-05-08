library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- VGA synchronization circuit. 

-- Reference:
-- FPGA Prototyping By VHDL Examples (Xilinx Spartan-3 Version),  
-- Chapter 12 (Page 264)

entity vga_sync is
   generic(CLK_DIVISOR: integer := VGA_CLK_DIVISOR);
   
   port(rst_n:       in std_logic;
        clk:         in std_logic;
        valid_hpos: out std_logic;
        valid_vpos: out std_logic;
        last_point: out std_logic; -- Indicates last pixel location
        pixel_tick: out std_logic;
        hsync:      out std_logic;
        vsync:      out std_logic);
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
   -- Sync counters 
   signal h_count_reg:  integer range 0 to HT; 
   signal h_count_next: integer range 0 to HT; 
   signal v_count_reg:  integer range 0 to VT; 
   signal v_count_next: integer range 0 to VT;   
   -- Output buffers
   signal h_sync_reg:   std_logic; 
   signal h_sync_next:  std_logic;   
   signal v_sync_reg:   std_logic; 
   signal v_sync_next:  std_logic; 
   -- Signals to indicate active region of the VGA display
   signal active_hpos:  std_logic;
   signal active_vpos:  std_logic;
   -- Status signals
   signal h_end:        std_logic; 
   signal v_end:        std_logic; 
   signal pos_edge:     std_logic; 
begin
   -- Instantiate clock divider
   clock_divider: entity work.clock_divider(clock_divider_rtl)
   generic map(DIVISOR => CLK_DIVISOR)
   port map(rst_n      => rst_n,
            clk        => clk,
            pos_edge   => pos_edge);
   
   -- Status (end of : horizontal counter = 799, vertical counter = 524)
   h_end <= '1' when h_count_reg = (HT - 1) else '0';
   v_end <= '1' when v_count_reg = (VT - 1) else '0';

   -- Mod-800 horizontal sync counter
   hsync_counter: process(h_count_reg,
                          h_end,
                          pos_edge)
   begin
      if pos_edge = '1' then -- 25 MHz tick
         if h_end = '1' then
            h_count_next <= 0;
         else
            h_count_next <= h_count_reg + 1;
         end if;
      else
         h_count_next <= h_count_reg;
      end if;
   end process;
   
   -- Mod-525 vertical sync counter
   vsync_counter: process(v_count_reg,
                          h_end,
                          v_end,
                          pos_edge)
   begin
      if pos_edge = '1' and h_end = '1' then
         if v_end = '1' then
            v_count_next <= 0;
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
   
   -- Indicate active display region 
   active_hpos <= '1' when h_count_reg < HD else '0';
   active_vpos <= '1' when v_count_reg < VD else '0';
      
   -- Output signals
   valid_hpos <= active_hpos;
   valid_vpos <= active_vpos;
   last_point <= h_end and v_end;
   pixel_tick <= pos_edge;
   hsync      <= h_sync_reg;
   vsync      <= v_sync_reg;  
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         h_count_reg <=  0;        
         v_count_reg <=  0;
         h_sync_reg  <= '0';         
         v_sync_reg  <= '0';
      elsif rising_edge(clk) then
         h_count_reg <= h_count_next;        
         v_count_reg <= v_count_next;
         h_sync_reg  <= h_sync_next;       
         v_sync_reg  <= v_sync_next;
      end if;
   end process;   
end vga_sync_rtl;
