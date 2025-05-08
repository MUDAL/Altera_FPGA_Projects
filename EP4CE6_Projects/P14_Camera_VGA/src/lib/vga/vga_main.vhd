library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Module: VGA driver

entity vga_main is
   generic(DATA_WIDTH:  integer := DATA_WIDTH);
           
   port(rst_n:             in std_logic;
        clk:               in std_logic;
        enable:            in std_logic;
        data_in:           in std_logic_vector(DATA_WIDTH - 1 downto 0);
        fifo_read_enable: out std_logic;
        hsync:            out std_logic;
        vsync:            out std_logic;
        rgb:              out std_logic_vector(DATA_WIDTH - 1 downto 0));
end vga_main;

architecture vga_main_rtl of vga_main is
   type fsm is (ST_IDLE, 
                ST_DISPLAY);
   signal state:       fsm;
   signal next_state:  fsm;
   ------------------------------------------------------------------
   signal read_fifo:    std_logic;
   signal write_vga:    std_logic;
   signal vga_active:   std_logic;
   signal invalid_line: std_logic;
   signal valid_hpos:   std_logic;
   signal valid_vpos:   std_logic;
   signal last_point:   std_logic;
   signal pixel_tick:   std_logic;
   signal rgb_reg:      std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal rgb_next:     std_logic_vector(DATA_WIDTH - 1 downto 0);
begin
   -- Instantiate VGA sync circuit
   vga_sync_unit: entity work.vga_sync(vga_sync_rtl)
   generic map(CLK_DIVISOR => VGA_CLK_DIVISOR)
   port map(rst_n          => rst_n,
            clk            => clk,
            valid_hpos     => valid_hpos,
            valid_vpos     => valid_vpos,
            last_point     => last_point,
            pixel_tick     => pixel_tick,
            hsync          => hsync,
            vsync          => vsync);
   
   -- Indicate: 
   -- 1. when to write to VGA
   -- 2. active region of VGA
   -- 3. invalid lines of pixels
   write_vga    <= pixel_tick and enable;
   vga_active   <= valid_hpos and valid_vpos;
   invalid_line <= not valid_vpos;
   
   next_state_logic: process(state,
                             last_point,
                             write_vga,
                             invalid_line)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if last_point = '1' and write_vga = '1' then
               next_state <= ST_DISPLAY;
            end if;
            
         when ST_DISPLAY =>
            if invalid_line = '1' then
               next_state <= ST_IDLE;
            end if;
      end case;
   end process;
   
   mealy_outputs: process(state,
                          rgb_reg,
                          vga_active,
                          write_vga,
                          data_in)
   begin
      read_fifo <= '0';
      rgb_next  <= (others => '0'); -- Blank zones
      case state is
         when ST_IDLE =>
         
         when ST_DISPLAY =>
            if vga_active = '1' then
               if write_vga = '1' then
                  read_fifo <= '1'; -- Enable reading of VGA FIFO
                  rgb_next  <= data_in;
               else
                  rgb_next  <= rgb_reg;
               end if;
            end if;
      end case;
   end process;
   
   -- Outputs
   fifo_read_enable <= read_fifo;
   
   rgb <= rgb_next;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state   <= ST_IDLE;
         rgb_reg <= (others => '0');
      elsif rising_edge(clk) then
         state   <= next_state;
         rgb_reg <= rgb_next;
      end if;
   end process;
end vga_main_rtl;