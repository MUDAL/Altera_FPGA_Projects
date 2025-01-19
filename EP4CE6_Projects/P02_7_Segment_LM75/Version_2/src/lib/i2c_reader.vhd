library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module to read data from LM75 sensor via I2C.
-- From the LM75 datasheet, bits D15 to D7 contain the temperature ....
-- data to be obtained from the sensor i.e. 9 out of the 16 bits from ..
-- the sensor will be required. 

-- D15: sign bit, D7: 0.5 celsius.
-- D6 to D0: don't care 
-- This design is concerned with +ve temperatures only. 
-- 
-- An internal signal (buffer) holds the bits sent by the LM75.  
-- The LM75 will send a total of 17 bits (16 data bits and 1 ACK bit).

entity i2c_reader is
   port(rst_n:     in std_logic;
        clk:       in std_logic;
        en:        in std_logic;
        sda:    inout std_logic;
        scl:      out std_logic;
        data_out: out std_logic_vector(8 downto 0); -- 9-bit data from LM75
        done:     out std_logic);
end i2c_reader;

architecture i2c_reader_rtl of i2c_reader is
   -- I2C ADDR, R/W = 1
   constant ADDR: std_logic_vector(0 to 7) := "10010001";
   -- Midpoint of high SCL pulse
   constant MID_HP: integer := 124;
   -- For the start condition
   constant START_CYCLE: integer := 149;
   -- Half of SCL cycle
   constant HALF_CYCLE: integer := 249;
   -- Midpoint of low SCL pulse
   constant MID_LP: integer := 374;
   -- Full SCL cycle
   constant FULL_CYCLE: integer := 499;
   
   type i2c_state is (ST_IDLE, 
                      ST_START, 
                      ST_SEND_ADDR, 
                      ST_GET_ACK_HIGH_BYTE,
                      ST_SEND_ACK, 
                      ST_GET_LOW_BYTE, 
                      ST_SEND_NACK, 
                      ST_DONE, 
                      ST_STOP);
                      
   signal state:      i2c_state;
   signal next_state: i2c_state;
   ------------------------------------------------------------------
   signal sda_next:  std_logic;
   signal sda_reg:   std_logic;
   signal scl_next:  std_logic;
   signal scl_reg:   std_logic;
   signal start:     std_logic; -- Start condition
   signal scl_low:   std_logic; -- Set when low SCL pulse is at its midpoint
   signal scl_high:  std_logic; -- Set when high SCL pulse is at its midpoint
   signal pulse:     std_logic; -- SCL pulse
   signal index:     integer range 0 to 25;
   signal index_reg: integer range 0 to 25;
   signal data_next: std_logic_vector(0 to 16);
   signal data_reg:  std_logic_vector(0 to 16);
   signal clks:      unsigned(8 downto 0); -- Number of system clocks in SCL  
begin
   -- Counts number of system clocks [50MHz] in an I2C clock [100kHz] period 
   clock_counter: process(rst_n,clk)
   begin
      if rst_n = '0' then
         clks <= (others => '0');   
      elsif rising_edge(clk) then      
         if clks = to_unsigned(FULL_CYCLE,clks'length) then
            clks <= (others => '0');
         else
            clks <= clks + 1;
         end if;
      end if;
   end process;
   
   start    <= '1' when clks = to_unsigned(START_CYCLE,clks'length) else '0';
   scl_low  <= '1' when clks = to_unsigned(MID_LP,clks'length)      else '0';
   scl_high <= '1' when clks = to_unsigned(MID_HP,clks'length)      else '0';
   
   next_state_logic: process(state,
                             en,
                             start,
                             index_reg,
                             scl_reg,
                             scl_low,
                             scl_high)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if start = '1' and en = '1' then
               next_state <= ST_START;
            end if;
            
         when ST_START =>
            if scl_reg = '0' then
               next_state <= ST_SEND_ADDR;
            end if;
            
         when ST_SEND_ADDR =>
            if index_reg = 8 then
               next_state <= ST_GET_ACK_HIGH_BYTE;
            end if;
            
         when ST_GET_ACK_HIGH_BYTE =>
            if index_reg = 17 then
               next_state <= ST_SEND_ACK;
            end if;
            
         when ST_SEND_ACK =>
            if scl_high = '1' then
               next_state <= ST_GET_LOW_BYTE;
            end if;
            
         when ST_GET_LOW_BYTE =>
            if index_reg = 25 then
               next_state <= ST_SEND_NACK;
            end if;
            
         when ST_SEND_NACK =>
            if scl_low = '1' then
               next_state <= ST_DONE;
            end if;
            
         when ST_DONE =>
            if scl_low = '1' then
               next_state <= ST_STOP;
            end if;  
            
         when ST_STOP =>
            if scl_high = '1' and en = '0' then
               next_state <= ST_IDLE;
            end if; 
            
      end case;
   end process; 
   
   -- Moore output
   done <= '1' when state = ST_DONE or state = ST_STOP else '0'; 
   
   mealy_outputs: process(state,
                          en,
                          start,
                          sda,
                          sda_reg,
                          index_reg,
                          data_reg,
                          scl_low,
                          scl_high,
                          scl_reg)
   begin
      sda_next  <= sda_reg;
      index     <= index_reg;
      data_next <= data_reg;
      case state is
         when ST_IDLE =>
            sda_next <= '1';
            if start = '1' and en = '1' then
               sda_next <= '0';
            end if;
            
         when ST_START =>
         
         when ST_SEND_ADDR =>
            if scl_low = '1' then
               sda_next <= ADDR(index_reg);
            elsif scl_high = '1' then
               index <= index_reg + 1;
            end if;
            
         when ST_GET_ACK_HIGH_BYTE =>
            -- Receive slave ACK (index 8) and high byte (index 9 to 16)
            if scl_high = '1' then
               data_next(index_reg - 8) <= sda;
               index <= index_reg + 1;
            end if;  
            
         when ST_SEND_ACK => -- Master ACK
            if scl_low = '1' then
               sda_next <= '0';
            end if;                 
         when ST_GET_LOW_BYTE => -- Read low byte (index 17 to 24)
            if scl_reg = '0' then
               sda_next <= '1'; -- Release SDA (LM75 will pull low if needed)
            elsif scl_high = '1' then
               data_next(index_reg - 8) <= sda;
               index <= index_reg + 1;
            end if;
            
         when ST_SEND_NACK =>
            if scl_low = '1' then
               sda_next <= '1';
               index    <=  0;
            end if;
            
         when ST_DONE =>
            if scl_low = '1' then
               sda_next <= '0';
            end if;
            
         when ST_STOP =>
            if scl_high = '1' then
               sda_next <= '1';
            end if;
            
      end case;   
   end process;

   -- Generates I2C clock (SCL)
   pulse    <= '1' when clks <= to_unsigned(HALF_CYCLE,clks'length) else '0';
   scl_next <= '1' when state = ST_IDLE or state = ST_STOP          else pulse;  
   
   -- Tristate buffer logic:
   -- SDA/SCL = 'Z' (releasing SDA/SCL line) implies a logic high.
   sda <= 'Z' when sda_reg = '1' else '0';
   scl <= 'Z' when scl_reg = '1' else '0';
   
   -- Bit 0 of 'data_reg' is redundant (ACK from LM75)
   data_out <= data_reg(1 to 9);
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state     <= ST_IDLE;
         sda_reg   <= '1';
         scl_reg   <= '1';
         index_reg <=  0;
         data_reg  <= (others => '0');
      elsif rising_edge(clk) then
         state     <= next_state;
         sda_reg   <= sda_next;
         scl_reg   <= scl_next;
         index_reg <= index;
         data_reg  <= data_next;
      end if;
   end process;
end i2c_reader_rtl;