library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Camera interface: Drives the camera module and receives
-- pixel data from it. The MSB of this module's data output  
-- is padded with zeros because we're only interested in the
-- camera's grayscale component.

entity camera_interface is
   -- Clock divisor for generating "xclk" from "clk"
   generic(CLK_DIVISOR: integer := CAM_CLK_DIVISOR;
           DATA_WIDTH:  integer := DATA_WIDTH);
   
   port(rst_n:              in std_logic;
        clk:                in std_logic; 
        enable:             in std_logic; 
        data_in:            in std_logic_vector(7 downto 0);
        vsync:              in std_logic;
        href:               in std_logic;
        pclk:               in std_logic;
        xclk:              out std_logic;
        fifo_write_enable: out std_logic;
        data_out:          out std_logic_vector(DATA_WIDTH - 1 downto 0));
end camera_interface;

architecture camera_interface_rtl of camera_interface is
   -- Lines (or rows) of camera pixels
   constant MAX_LINES: integer := 480;
   ------------------------------------------------------------------
   type fsm is (ST_IDLE,
                ST_FRAME_WAIT,
                ST_DATA_CAPTURE);
   signal state:      fsm;
   signal next_state: fsm;
   ------------------------------------------------------------------
   signal vsync_reg:  std_logic;
   signal href_reg:   std_logic;
   signal pclk_reg:   std_logic;
   signal xclk_out:   std_logic;
   signal byte_reg:   std_logic;
   signal byte_next:  std_logic;
   signal data_reg:   std_logic_vector(7 downto 0);
   signal pclk_rise:  std_logic;
   signal line_reg:   unsigned(8 downto 0);
   signal line_next:  unsigned(8 downto 0);
   signal edge_reg:   std_logic;
   signal edge_next:  std_logic;
begin
   -- Instantiate clock divider
   clock_divider: entity work.clock_divider(clock_divider_rtl)
   generic map(DIVISOR => CLK_DIVISOR)
   port map(rst_n      => rst_n,
            clk        => clk,
            clk_out    => xclk_out);

   next_state_logic: process(state,
                             enable,
                             vsync,
                             vsync_reg,
                             href,
                             href_reg,
                             line_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if enable = '1' then
               next_state <= ST_FRAME_WAIT;
            end if;
            
         when ST_FRAME_WAIT =>
            if vsync = '0' and vsync_reg = '1' then
               next_state <= ST_DATA_CAPTURE;
            end if;
            
         when ST_DATA_CAPTURE =>
            if href = '0' and href_reg = '1' then
               if line_reg = MAX_LINES - 1 then
                  next_state <= ST_IDLE;
               end if;
            end if;
            
      end case;
   end process;
   
   line_counter: process(state,
                         line_reg,
                         href, 
                         href_reg)
   begin
      line_next <= line_reg;
      case state is            
         when ST_DATA_CAPTURE =>
            if href = '0' and href_reg = '1' then
               if line_reg < MAX_LINES - 1  then
                  line_next <= line_reg + 1;
               else
                  line_next <= (others => '0');
               end if;
            end if;
            
         when others =>
      end case;
   end process;
   
   pclk_rising_edge_detector: process(state,
                                      href,
                                      pclk,
                                      pclk_reg)
   begin
      pclk_rise <= '0';
      case state is
         when ST_DATA_CAPTURE =>
            if href = '1' then
               if pclk = '1' and pclk_reg = '0' then
                  pclk_rise <= '1';
               end if;
            end if;
            
         when others =>
      end case;
   end process;
   
   -- Byte selector
   byte_next <= not byte_reg when pclk_rise = '1' else byte_reg;
   
   -- Edge detector for even bytes
   edge_next <= '1' when byte_next = '0'
                     and byte_reg  = '1' 
        else    '0';
                
   -- Buffers 
   xclk              <= xclk_out;
   fifo_write_enable <= edge_reg;   
   data_out          <= x"00" & data_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state     <= ST_IDLE;
         vsync_reg <= '0';
         href_reg  <= '0';
         pclk_reg  <= '0';
         byte_reg  <= '0';
         edge_reg  <= '0';
         data_reg  <= (others => '0');
         line_reg  <= (others => '0');
      elsif rising_edge(clk) then
         state     <= next_state;
         vsync_reg <= vsync;
         href_reg  <= href;
         pclk_reg  <= pclk;
         byte_reg  <= byte_next;
         edge_reg  <= edge_next;
         data_reg  <= data_in;
         line_reg  <= line_next;
      end if;
   end process;
end camera_interface_rtl;