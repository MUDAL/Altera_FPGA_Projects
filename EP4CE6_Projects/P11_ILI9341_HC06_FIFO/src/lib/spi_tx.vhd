library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module to configure and transmit pixel data to the ILI9341 TFT
-- display module via the SPI communication protocol.
-- The pixel data (or colours) to be transmitted to the display
-- module depend on the data from the UART RX module.

-- SPI clock: Input clock / 2
-- For the SPI transmission, each bit to be transmitted is shifted out  
-- on the rising edge of SCK, while the index counter for the bit after  
-- is decremented on the falling edge of SCK.
-- Data is transmitted MSB first.

entity spi_tx is
   generic(CLK_FREQ: integer := 2_000_000);
   port(rst_n: in std_logic; -- System reset
        clk: in std_logic;
        en: in std_logic;
        colour: in std_logic_vector(1 downto 0);
        led: out std_logic; -- Display's LED
        sck: out std_logic;
        mosi: out std_logic;
        dc: out std_logic; -- Register select (Data:1/Command:0)
        d_rst_n: out std_logic; -- Display reset
        cs: out std_logic; -- Chip select
        rdy: out std_logic); -- Ready to receive data
end spi_tx;

architecture spi_tx_rtl of spi_tx is
   -- Reset period (must exceed 10 uS. 15 uS is chosen)
   -- 15 uS = 30 clock cycles for a 2 MHz clock
   -- To minimize resource utilization due to counters, lower resolution ...
   -- counters are reused for all time delays required by the TFT display.
   -- 1 mS = 2000 clock cycles for a 2 MHz clock.
   ------------------------------------------------------------------
   constant CNT_RST: integer := 15 * (CLK_FREQ / 1_000_000) - 1; -- 15 uS
   constant CNT_1MS: integer := (CLK_FREQ / 1_000) - 1; -- 1 ms
   constant CNT_005: integer := 5 - 1; -- 5 ms waiting time
   constant CNT_120: integer := 120 - 1; -- 120 ms waiting time
   ------------------------------------------------------------------
   -- The ILI9341 TFT display has a resolution of 240x320 pixels i.e.
   -- Total number of pixels = 76800. We're interested in a 16 bits/pixel
   -- configuration, hence total number of bits = 1228800 (153600 bytes).
   -- To count all bytes that have been transmitted, we can use two ...
   -- counters such that one counts 25600 bytes, while the other one ..
   -- increments (maximum: 6 counts) whenever the previous reaches its
   -- maximum value. (25600 x 6 = 153600) 
   constant CNT_BYTES: integer := 25_600 - 1; -- 25600 bytes
   constant CNT_006:   integer := 6 - 1; -- 6 groups of 25600 bytes = 153600
   ------------------------------------------------------------------
   -- Constants with 'CMD' suffix are addresses of some registers ...
   -- of the ILI9341 TFT module.
   -- The BPP (Bits Per Pixel) configuration of 0x55 = 16 bits/pixel.
   -- An RGB setting of 0x08 ensures RGB display instead of BGR.
   constant DISP_ON_CMD:      std_logic_vector(7 downto 0) := x"29";
   constant PIXEL_FORMAT_CMD: std_logic_vector(7 downto 0) := x"3A";
   constant BPP_SETTING:      std_logic_vector(7 downto 0) := x"55";
   constant MEM_ACCESS_CMD:   std_logic_vector(7 downto 0) := x"36";
   constant RGB_SETTING:      std_logic_vector(7 downto 0) := x"08";
   constant SLEEP_OUT_CMD:    std_logic_vector(7 downto 0) := x"11";
   constant MEM_WRITE_CMD:    std_logic_vector(7 downto 0) := x"2C";
   ------------------------------------------------------------------
   -- Colour codes (Red(R), Green(G), Blue(B), others: White(W))
   constant R: std_logic_vector(1 downto 0) := "00";
   constant G: std_logic_vector(1 downto 0) := "01";
   constant B: std_logic_vector(1 downto 0) := "10"; 
   ------------------------------------------------------------------
   -- 16-bit RGB encoding (R:5-bits, G:6-bits, B:5-bits) per pixel
   -- Bit: 15|14|13|12|11|10|09|08|07|06|05|04|03|02|01|00
   -- RGB: R4|R3|R2|R1|R0|G5|G4|G3|G2|G1|G0|B4|B3|B2|B1|B0 
   constant R_HI_BYTE: std_logic_vector(7 downto 0) := x"F8";
   constant R_LO_BYTE: std_logic_vector(7 downto 0) := x"00";
   constant G_HI_BYTE: std_logic_vector(7 downto 0) := x"07";
   constant G_LO_BYTE: std_logic_vector(7 downto 0) := x"E0";
   constant B_HI_BYTE: std_logic_vector(7 downto 0) := x"00";
   constant B_LO_BYTE: std_logic_vector(7 downto 0) := x"1F";
   constant W_HI_BYTE: std_logic_vector(7 downto 0) := x"FF";
   constant W_LO_BYTE: std_logic_vector(7 downto 0) := x"FF";
   ------------------------------------------------------------------   
   type fsm is (ST_IDLE, 
                ST_TFT_RST, 
                ST_5MS, -- Wait for 5 ms
                ST_DISP_ON_CMD,
                ST_PIXEL_FORMAT_CMD, 
                ST_BPP_SETTING, -- BPP: Bits per pixel
                ST_MEM_ACCESS_CMD, 
                ST_RGB_SETTING,
                ST_SLEEP_OUT_CMD, 
                ST_120MS, -- Wait for 120 ms
                ST_TRIGGER,
                ST_READY,
                ST_MEM_WRITE_CMD,
                ST_SEND_PIXELS, 
                ST_DONE);
   ------------------------------------------------------------------             
   signal state: fsm;
   signal next_state: fsm;
   signal dc_mode: std_logic; -- Data/Command mode
   signal sck1_reg: std_logic;
   signal sck1_next: std_logic;
   signal sck2_reg: std_logic; -- Falling edge detector
   signal sck2_next: std_logic;
   signal sck3_reg: std_logic;
   signal sck3_next: std_logic;
   signal mosi_hi_byte: std_logic_vector(7 downto 0);
   signal mosi_lo_byte: std_logic_vector(7 downto 0); 
   signal mosi_mux: std_logic_vector(7 downto 0);
   signal mosi_data: std_logic_vector(7 downto 0); 
   signal mosi_reg: std_logic;
   signal mosi_next: std_logic;
   signal bsel_reg: std_logic;
   signal bsel_next: std_logic;
   signal dcmd_reg: std_logic;
   signal dcmd_next: std_logic;
   ------------------------------------------------------------------
   signal cnt1_reg:   integer range 0 to CNT_1MS;
   signal cnt1_next:  integer range 0 to CNT_1MS;
   signal cnt2_reg:   integer range 0 to CNT_120;
   signal cnt2_next:  integer range 0 to CNT_120;
   signal cnt3_reg:   integer range 0 to CNT_BYTES;
   signal cnt3_next:  integer range 0 to CNT_BYTES;
   signal cnt4_reg:   integer range 0 to CNT_006;
   signal cnt4_next:  integer range 0 to CNT_006;   
   signal index_reg:  integer range 7 downto 0;
   signal index_next: integer range 7 downto 0; 
begin
   next_state_logic: process(state,en,cnt1_reg,cnt2_reg,
                             sck2_reg,index_reg,cnt3_reg,
                             cnt4_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            next_state <= ST_TFT_RST;
         when ST_TFT_RST =>
            if cnt1_reg = CNT_RST then
               next_state <= ST_5MS;
            end if;
         when ST_5MS =>
            if cnt1_reg = CNT_1MS and cnt2_reg = CNT_005 then
               next_state <= ST_DISP_ON_CMD;
            end if;
         when ST_DISP_ON_CMD =>
            if sck2_reg = '1' and index_reg = 0 then
               next_state <= ST_PIXEL_FORMAT_CMD;
            end if;
         when ST_PIXEL_FORMAT_CMD =>
            if sck2_reg = '1' and index_reg = 0 then
               next_state <= ST_BPP_SETTING;
            end if;
         when ST_BPP_SETTING =>
            if sck2_reg = '1' and index_reg = 0 then
               next_state <= ST_MEM_ACCESS_CMD;
            end if;
         when ST_MEM_ACCESS_CMD =>
            if sck2_reg = '1' and index_reg = 0 then
               next_state <= ST_RGB_SETTING;
            end if;
         when ST_RGB_SETTING =>
            if sck2_reg = '1' and index_reg = 0 then
               next_state <= ST_SLEEP_OUT_CMD;
            end if;
         when ST_SLEEP_OUT_CMD =>
            if sck2_reg = '1' and index_reg = 0 then
               next_state <= ST_120MS;
            end if;
         when ST_120MS =>
            if cnt1_reg = CNT_1MS and cnt2_reg = CNT_120 then
               next_state <= ST_TRIGGER;
            end if;
         when ST_TRIGGER =>
            if en = '1' then
               next_state <= ST_READY;
            end if;
         when ST_READY =>
            next_state <= ST_MEM_WRITE_CMD;
         when ST_MEM_WRITE_CMD =>
            if sck2_reg = '1' and index_reg = 0 then
               next_state <= ST_SEND_PIXELS;
            end if;
         when ST_SEND_PIXELS =>
            if sck2_reg = '1' and index_reg = 0 and 
               cnt3_reg = CNT_BYTES and cnt4_reg = CNT_006 then
               next_state <= ST_DONE;
            end if;
         when ST_DONE =>
            next_state <= ST_TRIGGER;
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
   
   led <= '1'; -- Turn TFT LED on
   ------------------------------------------------------------------
   -- 'dc_mode' is set when in data/command mode and reset if not.
   dc_mode <= '1' when state = ST_DISP_ON_CMD 
                    or state = ST_PIXEL_FORMAT_CMD
                    or state = ST_BPP_SETTING 
                    or state = ST_MEM_ACCESS_CMD
                    or state = ST_RGB_SETTING
                    or state = ST_SLEEP_OUT_CMD
                    or state = ST_MEM_WRITE_CMD
                    or state = ST_SEND_PIXELS 
      else    '0';
   
   -- TFT display register select (data/command) logic
   dcmd_next <= '1' when state = ST_BPP_SETTING 
                      or state = ST_RGB_SETTING
                      or state = ST_SEND_PIXELS 
        else    '0';
 
   -- Logic to generate SCK when it's time to send commands or data
   sck1_next <= not sck1_reg when dc_mode = '1' else '0'; 
   sck2_next <= sck1_reg;
   sck3_next <= sck2_reg;
   
   -- Counters
   cnt1_next <= cnt1_reg + 1 when (state = ST_TFT_RST and cnt1_reg /= CNT_RST)
                               or (state = ST_5MS and cnt1_reg /= CNT_1MS)
                               or (state = ST_120MS and cnt1_reg /= CNT_1MS)
                               
        else        0        when (state = ST_TFT_RST and cnt1_reg = CNT_RST)
                               or (state = ST_5MS and cnt1_reg = CNT_1MS)
                               or (state = ST_120MS and cnt1_reg = CNT_1MS)                         
        else    cnt1_reg;
   
   cnt2_next <= cnt2_reg + 1 when (state = ST_5MS and cnt1_reg = CNT_1MS
                                   and cnt2_reg /= CNT_005) 
                               or (state = ST_120MS and cnt1_reg = CNT_1MS
                                   and cnt2_reg /= CNT_120)
                               
        else        0        when (state = ST_5MS and cnt1_reg = CNT_1MS
                                   and cnt2_reg = CNT_005)
                               or (state = ST_120MS and cnt1_reg = CNT_1MS
                                   and cnt2_reg = CNT_120)
        else    cnt2_reg;
   
   index_next <= index_reg - 1 when dc_mode = '1' and sck2_reg = '1' 
                                and index_reg > 0
                               
         else        7         when dc_mode = '1' and sck2_reg = '1'
                                and index_reg = 0
         else    index_reg;
   
   cnt3_next <= cnt3_reg + 1 when state = ST_SEND_PIXELS and sck2_reg = '1'
                              and index_reg = 0 and cnt3_reg /= CNT_BYTES
         
         else       0        when state = ST_SEND_PIXELS and sck2_reg = '1'
                              and index_reg = 0 and cnt3_reg = CNT_BYTES
         else   cnt3_reg;
   
   cnt4_next <= cnt4_reg + 1 when state = ST_SEND_PIXELS and sck2_reg = '1'
                              and index_reg = 0 and cnt3_reg = CNT_BYTES
                              and cnt4_reg /= CNT_006
                              
        else        0        when state = ST_SEND_PIXELS and sck2_reg = '1' 
                              and index_reg = 0 and cnt3_reg = CNT_BYTES 
                              and cnt4_reg = CNT_006
        else    cnt4_reg;
   
   -- Byte selector (for pixel data)
   bsel_next <= not bsel_reg when state = ST_SEND_PIXELS
                              and sck2_reg = '1' 
                              and index_reg = 0
        else    bsel_reg;
            
   -- Multiplexer logic for pixel data (high and low bytes)
   with colour select
      mosi_hi_byte <= R_HI_BYTE when R,
                      G_HI_BYTE when G,
                      B_HI_BYTE when B,
                      W_HI_BYTE when others;
   
   with colour select
      mosi_lo_byte <= R_LO_BYTE when R,
                      G_LO_BYTE when G,
                      B_LO_BYTE when B,
                      W_LO_BYTE when others;
   
   mosi_data <= mosi_hi_byte when bsel_reg = '0' else mosi_lo_byte;
   
   -- MOSI multiplexer logic
   with state select
      mosi_mux <= DISP_ON_CMD      when ST_DISP_ON_CMD,
                  PIXEL_FORMAT_CMD when ST_PIXEL_FORMAT_CMD,
                  BPP_SETTING      when ST_BPP_SETTING,
                  MEM_ACCESS_CMD   when ST_MEM_ACCESS_CMD,
                  RGB_SETTING      when ST_RGB_SETTING,
                  SLEEP_OUT_CMD    when ST_SLEEP_OUT_CMD,
                  MEM_WRITE_CMD    when ST_MEM_WRITE_CMD,
                  ---------- Pixel data ----------------
                  mosi_data        when ST_SEND_PIXELS,
                  ---------- No data -------------------
                    x"00"          when others;          
                      
   -- MOSI shift logic
   mosi_next <= mosi_mux(index_reg) when dc_mode = '1' and sck1_reg = '1'
        else    mosi_reg;
   
   -- TFT display hardware reset logic
   d_rst_n <= '0' when state = ST_TFT_RST and cnt1_reg /= CNT_RST else '1';
   
   -- TFT display chip select logic
   cs <= '1' when (state = ST_TRIGGER and en = '0')
               or  state = ST_READY
               or  state = ST_IDLE 
               or  state = ST_TFT_RST 
               or  state = ST_5MS 
   else  '0';
   
   -- 'Ready' logic for SPI TX module
   rdy <= '1' when state = ST_READY else '0';
   ------------------------------------------------------------------
   buffered_outputs: sck <= sck3_reg;
                     mosi <= mosi_reg;
                     dc <= dcmd_reg;
                     
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         sck1_reg <= '0';
         sck2_reg <= '0';
         sck3_reg <= '0';
         mosi_reg <= '0';
         bsel_reg <= '0';
         dcmd_reg <= '0';
         cnt1_reg <= 0;
         cnt2_reg <= 0;
         cnt3_reg <= 0;
         cnt4_reg <= 0;       
         index_reg <= 7;
      elsif rising_edge(clk) then
         sck1_reg <= sck1_next;
         sck2_reg <= sck2_next;
         sck3_reg <= sck3_next;
         mosi_reg <= mosi_next;
         bsel_reg <= bsel_next;
         dcmd_reg <= dcmd_next;
         cnt1_reg <= cnt1_next;
         cnt2_reg <= cnt2_next;
         cnt3_reg <= cnt3_next;
         cnt4_reg <= cnt4_next;        
         index_reg <= index_next;
      end if;  
   end process;
end spi_tx_rtl;
