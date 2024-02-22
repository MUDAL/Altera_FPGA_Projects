library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Module to read data from LM75 sensor via I2C.
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
   port(rst_n: in std_logic;
        clk: in std_logic;
        en: in std_logic;
        sda: inout std_logic;
        scl: out std_logic;
        data_out: out std_logic_vector(8 downto 0); --9-bit data from LM75
        done: out std_logic);
end i2c_reader;

architecture i2c_reader_rtl of i2c_reader is
   constant ADDR: std_logic_vector(0 to 7) := "10010001";--I2C ADDR, R/W = 1
   constant MID_HIGH_PULSE: integer := 124; --Midpoint of high SCL pulse
   constant START_CYCLE: integer := 149; --For the start condition
   constant HALF_SCL_CYCLE: integer := 249; --Half of SCL cycle
   constant MID_LOW_PULSE: integer := 374; --Midpoint of low SCL pulse
   constant FULL_SCL_CYCLE: integer := 499; --Full SCL cycle
   type i2c_state is (ST_IDLE, ST_START, ST_SEND_ADDR, ST_GET_ACK_HIGH_BYTE,
                      ST_SEND_ACK, ST_GET_LOW_BYTE, ST_SEND_NACK, ST_DONE, 
                      ST_STOP, ST_RESTART);
   signal state: i2c_state;
   signal next_state: i2c_state;
   signal sda_next: std_logic;
   signal sda_reg: std_logic;
   signal scl_next: std_logic;
   signal scl_reg: std_logic;
   signal index: integer range 0 to 26;
   signal index_reg: integer range 0 to 26;
   signal i2c_buff: std_logic_vector(0 to 17);
   signal i2c_buff_reg: std_logic_vector(0 to 17);
   signal clks: unsigned(8 downto 0); --Number of system clocks in SCL  
begin
   
   --Counts number of system clocks [50MHz] in an I2C clock [100kHz] period 
   clock_counter: process(rst_n,clk)
   begin
      if rst_n = '0' then
         clks <= (others => '0');   
      elsif rising_edge(clk) then      
         if clks = to_unsigned(FULL_SCL_CYCLE,clks'length) then
            clks <= (others => '0');
         else
            clks <= clks + 1;
         end if;
      end if;
   end process;
   
   next_state_logic: process(state,en,clks,index_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if en = '1' and clks = to_unsigned(START_CYCLE,clks'length) then
               next_state <= ST_START;
            end if;        
         when ST_START =>
            if clks > to_unsigned(HALF_SCL_CYCLE,clks'length) then
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
            if index_reg = 18 then
               next_state <= ST_GET_LOW_BYTE;
            end if;
         when ST_GET_LOW_BYTE =>
            if index_reg = 26 then
               next_state <= ST_SEND_NACK;
            end if;
         when ST_SEND_NACK =>
            if index_reg = 0 then
               next_state <= ST_DONE;
            end if;
         when ST_DONE =>
            if clks = to_unsigned(MID_LOW_PULSE,clks'length) then
               next_state <= ST_STOP;
            end if;        
         when ST_STOP =>
            if clks = to_unsigned(MID_HIGH_PULSE,clks'length) then
               next_state <= ST_RESTART;
            end if;        
         when ST_RESTART =>
            if en = '0' then
               next_state <= ST_IDLE;
            end if;        
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
   
   moore_output: process(state)
   begin 
      case state is                          
         when ST_DONE | ST_STOP | ST_RESTART =>
            done <= '1';
         when others =>
            done <= '0';         
      end case;
   end process;   
   
   mealy_outputs: process(state,en,clks,sda,sda_reg,index_reg,i2c_buff_reg)
   begin
      sda_next <= sda_reg;
      index <= index_reg;
      i2c_buff <= i2c_buff_reg;
      case state is
         when ST_IDLE =>
            sda_next <= '1';
            if en = '1' and clks = to_unsigned(START_CYCLE,clks'length) then
               sda_next <= '0';
            end if;              
         when ST_SEND_ADDR =>
            if clks = to_unsigned(MID_LOW_PULSE,clks'length) then
               sda_next <= ADDR(index_reg);
            elsif clks = to_unsigned(MID_HIGH_PULSE,clks'length) then
               index <= index_reg + 1;
            end if;
         when ST_GET_ACK_HIGH_BYTE =>
            --Receive slave ACK (index 8) and high byte (index 9 to 16)
            if clks = to_unsigned(MID_HIGH_PULSE,clks'length) then
               i2c_buff(index_reg - 8) <= sda;
               index <= index_reg + 1;
            end if;              
         when ST_SEND_ACK =>
            --Send master ACK
            if clks = to_unsigned(MID_LOW_PULSE,clks'length) then
               sda_next <= '0';
            elsif clks = to_unsigned(MID_HIGH_PULSE,clks'length) then
               index <= index_reg + 1;
            end if;                 
         when ST_GET_LOW_BYTE =>
            --Read low byte (index 18 to 25)
            if clks = to_unsigned(MID_HIGH_PULSE,clks'length) then
               i2c_buff(index_reg - 8) <= sda;
            elsif clks = to_unsigned(MID_LOW_PULSE,clks'length) then
               index <= index_reg + 1;
            end if;
         when ST_SEND_NACK =>
            if clks = to_unsigned(MID_LOW_PULSE,clks'length) then
               sda_next <= '1';
               index <= 0;
            end if;                       
         when ST_DONE =>
            if clks = to_unsigned(MID_LOW_PULSE,clks'length) then
               sda_next <= '0';
            end if;
         when ST_STOP =>
            if clks = to_unsigned(MID_HIGH_PULSE,clks'length) then
               sda_next <= '1';
            end if;
         when others =>
      end case;   
   end process;

   --Generates I2C clock (SCL)
   scl_clock_gen_mealy_output: process(state,clks,scl_reg)
   begin
      scl_next <= scl_reg;
      case state is
         when ST_IDLE | ST_RESTART =>
            scl_next <= '1';  
         when ST_STOP =>
            if clks <= to_unsigned(HALF_SCL_CYCLE,clks'length) then
               scl_next <= '1';
            end if;
         when others =>
            if clks <= to_unsigned(HALF_SCL_CYCLE,clks'length) then
               scl_next <= '1';
            else
               scl_next <= '0';
            end if;              
      end case;
   end process;   
   
   --SDA/SCL = 'Z' (releasing SDA/SCL line) implies a logic high.
   tristate_buffers: 
   sda <= 'Z' when sda_reg = '1' else '0';
   scl <= 'Z' when scl_reg = '1' else '0';
   
   --bit 9 of 'data_out' is redundant. [Read bits from left to right]
   data_out <= i2c_buff_reg(1 to 8) & i2c_buff_reg(10);
   
   registered_outputs: process(rst_n,clk)
   begin
      if rst_n = '0' then
         sda_reg <= '1';
         scl_reg <= '1';
         index_reg <= 0;
         i2c_buff_reg <= (others => '0');
      elsif rising_edge(clk) then
         sda_reg <= sda_next;
         scl_reg <= scl_next;
         index_reg <= index;
         i2c_buff_reg <= i2c_buff;
      end if;
   end process;
   
end i2c_reader_rtl;