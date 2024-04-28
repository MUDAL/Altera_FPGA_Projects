library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Module to read data from DHT22 sensor via one-wire protocol.
-- From the DHT22 datasheet, there are 40 data bits that can be  
-- read from the sensor. From the most significant byte to the   
-- least significant byte, the following parameters are read  
-- respectively: Humidity integral, Humidity decimal,   
-- Temperature integral, Temperature decimal, and checksum.

-- Final data is read by dividing 16-bit humidity or temperature data  
-- by 10. Data validity is checked using the checksum byte.


entity one_wire is
   port(rst_n: in std_logic;
        clk: in std_logic;
        en: in std_logic;
        param: in std_logic; --Select Celsius or Humidity
        io: inout std_logic; --One wire data line (High Impedance)
        data_out: out std_logic_vector(15 downto 0);
        done: out std_logic;
        valid: out std_logic);
end one_wire;

architecture one_wire_rtl of one_wire is
   --Start pulse: about 18ms
   --Pre-ack pulse: about 40uS
   --Bit low pulse: Every data bit starts with a low pulse of about 50uS
   --Max bit pulse(M): Bit = '1' if high pulse of data bit exceeds M, else '0'.
   --ACK period: about 160uS
   --Bit 0: 26-28uS after initial 50uS for each DHT22 bit
   --Bit 1: 69-71uS after initial 50uS for each DHT22 bit
   constant START_PULSE: integer := 899_999;
   constant PRE_ACK_PULSE: integer := 1999;
   constant MAX_BIT_PULSE: integer := 2499;
   constant BIT_LOW_PULSE: integer := 2499;
   constant ACK_PERIOD: integer := 7999;
   type one_wire_state is (ST_IDLE, ST_START, ST_PRE_ACK, ST_ACK,  
                           ST_SAMPLE, ST_PROCESS, ST_DONE, ST_CHECK);
   signal state: one_wire_state;
   signal next_state: one_wire_state;
   signal io_next: std_logic;
   signal io_reg: std_logic;
   signal index: integer range 0 to 40; --40 data bits + redundant bit
   signal index_reg: integer range 0 to 40;
   signal clks_next: unsigned(19 downto 0);
   signal clks_reg: unsigned(19 downto 0);
   signal stamp_next: unsigned(19 downto 0);
   signal stamp_reg: unsigned(19 downto 0);
   signal pw: unsigned(19 downto 0); --pulse width
   signal data_next: std_logic_vector(0 to 39);
   signal data_reg: std_logic_vector(0 to 39);
   signal new_io: std_logic;
   signal new_io_reg: std_logic;
   signal old_io: std_logic;
   signal old_io_reg: std_logic;
   signal check_sum: unsigned(7 downto 0);
   signal bit_level: std_logic;
   signal done_reg: std_logic;
   signal done_next: std_logic;
begin
   next_state_logic: process(state,en,pw,index_reg,new_io_reg,old_io_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if en = '1' then
               next_state <= ST_START;
            end if;
         when ST_START =>
            if pw = to_unsigned(START_PULSE,pw'length) then
               next_state <= ST_PRE_ACK;
            end if;
         when ST_PRE_ACK =>
            if pw = to_unsigned(PRE_ACK_PULSE,pw'length) then
               next_state <= ST_ACK;
            end if;
         when ST_ACK => 
            if pw = to_unsigned(ACK_PERIOD,pw'length) then
               next_state <= ST_SAMPLE;
            end if;
         when ST_SAMPLE =>
            next_state <= ST_PROCESS;
         when ST_PROCESS =>
            if index_reg = 40 then
               next_state <= ST_DONE;
            else
               if new_io_reg = old_io_reg then
                  next_state <= ST_SAMPLE;
               end if;
            end if;
         when ST_DONE =>
            if pw = to_unsigned(BIT_LOW_PULSE,pw'length) then
               next_state <= ST_CHECK;
            end if;        
         when ST_CHECK =>
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
   
   moore_outputs: clks_next <= clks_reg + 1;
   done_next <= '1' when state = ST_DONE or state = ST_CHECK else '0';
   new_io <= io when state = ST_SAMPLE else new_io_reg;
   pw <= clks_reg - stamp_reg;
   
   mealy_outputs: process(state,en,clks_reg,pw,io_reg,index_reg,stamp_reg,
                          bit_level,data_reg,new_io_reg,old_io_reg)
   begin
      io_next <= io_reg;
      index <= index_reg;
      stamp_next <= stamp_reg;
      data_next <= data_reg;
      old_io <= old_io_reg;
      case state is
         when ST_IDLE =>
            if en = '1' then
               io_next <= '0';
               stamp_next <= clks_reg;
            end if;
         when ST_START =>
            if pw = to_unsigned(START_PULSE,pw'length) then
               io_next <= '1';
               stamp_next <= clks_reg;
            end if;
         when ST_PRE_ACK =>
            if pw = to_unsigned(PRE_ACK_PULSE,pw'length) then
               stamp_next <= clks_reg;
            end if;
         when ST_ACK =>
            if pw = to_unsigned(ACK_PERIOD,pw'length) then
               stamp_next <= clks_reg;
            end if;
         when ST_SAMPLE =>
         when ST_PROCESS =>
            if new_io_reg = '1' and old_io_reg = '0' then
               old_io <= '1';
               stamp_next <= clks_reg;
            elsif new_io_reg = '0' and old_io_reg = '1' then
               data_next(index_reg) <= bit_level;
               index <= index_reg + 1;
               old_io <= '0';                
            end if;        
         when ST_DONE =>
            index <= 0;
            if pw = to_unsigned(BIT_LOW_PULSE,pw'length) then
               io_next <= '1'; --Release one-wire data line
            end if;
         when ST_CHECK =>       
      end case;   
   end process;
   
   bit_level <= '1' when pw > to_unsigned(MAX_BIT_PULSE,pw'length) else '0';
   
   --Check sum = Humidity integral + Humidity decimal +
   --            Temperature integral + Temperature decimal
   check_sum <= unsigned(data_reg(0 to 7))   + 
                unsigned(data_reg(8 to 15))  +
                unsigned(data_reg(16 to 23)) +
                unsigned(data_reg(24 to 31));   
                     
   --Tristate buffer: 'Z' implies release of the 1-Wire data line
   io <= 'Z' when io_reg = '1' else '0';
   
   --Output data selector
   data_out <= data_reg(0 to 15) when param = '0' else    
               data_reg(16 to 31);
   
   done <= done_reg;

   valid <= '1' when check_sum = unsigned(data_reg(32 to 39)) and 
                     state = ST_CHECK else '0'; 
   
   registered_outputs: process(rst_n,clk)
   begin
      if rst_n = '0' then
         io_reg <= '1';
         index_reg <= 0;
         clks_reg <= (others => '0');
         stamp_reg <= (others => '0');
         data_reg <= (others => '0');
         new_io_reg <= '0';
         old_io_reg <= '0';
         done_reg <= '0';
      elsif rising_edge(clk) then
         io_reg <= io_next;
         index_reg <= index;
         clks_reg <= clks_next;
         stamp_reg <= stamp_next;
         data_reg <= data_next;
         new_io_reg <= new_io;
         old_io_reg <= old_io;
         done_reg <= done_next;
      end if;
   end process;
end architecture one_wire_rtl;