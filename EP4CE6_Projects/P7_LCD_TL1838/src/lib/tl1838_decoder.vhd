library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- FPGA module to decode signals from the TL1838 IR detector.  
-- The NEC protocol is used by the IR transmitter and TL1838:
-- From the TL1838 IR detector's perspective, a pulse burst from  
-- the transmitter is taken as a logic '0' while a logic '1' occurs  
-- when the transmitter doesn't send anything.
-- 0. Reception starts with a 9 ms low pulse, then 4.5 ms high pulse
-- 1. Logic '1' = 562.2 uS low pulse followed by 1.687 ms high pulse
-- 2. Logic '0' = 562.2 uS low pulse followed by 562.2 uS high pulse
-- To distinguish between '1' and '0', we only need the duration of the ....
-- high pulses.  
-- For repeat codes, reception starts with a 9 ms low pulse, then 2.25 ms ... 
-- high pulse followed by a 562.2 uS low pulse. The repeat codes are obtained  
-- whenever a key on the IR remote is pressed without being released. 
-- If the key isn't released, the repeat code will be sent every 108 ms.  

-- 50 MHz system clock is used in this design.

entity tl1838_decoder is
   port(rst_n: in std_logic;
        clk: in std_logic;
        ir: in std_logic;
        data_out: out std_logic_vector(15 downto 0);
        done: out std_logic;
        err: out std_logic);
end tl1838_decoder;

architecture tl1838_decoder_rtl of tl1838_decoder is
   -- CONSTANTS:
   -- 1. Since a logic '0' means 562.2 uS high pulse and '1' means 1.687 ms 
   -- high pulse, we can use an intermediate pulse width to distinguish ....
   -- between both logic levels. A reference pulse width of 600 uS is used.
   -- 2. A 108 ms interval lies between two repeat codes. During this period,  
   -- the IR data line will be high for about 96 ms before the next repeat  
   -- code (check the timing diagram). Therefore, a reference 'repeat' period  
   -- of 3 ms is used to detect repeat codes to send the decoder back to the
   -- 'IDLE' state.     
   constant REF_PW: integer := 29_999;
   constant REPEAT: integer := 149_999;
   type fsm is (ST_IDLE, ST_LEADING_PULSE, ST_SECOND_PULSE,
                ST_DATA_LOW_PULSE, ST_DATA_HIGH_PULSE, ST_STOP,
                ST_DONE);
   signal state: fsm;
   signal next_state: fsm;
   signal index_reg: integer range 31 downto 0;
   signal index_next: integer range 31 downto 0;
   signal data_reg: std_logic_vector(31 downto 0);
   signal data_next: std_logic_vector(31 downto 0);
   signal clks_reg: unsigned(19 downto 0);
   signal clks_next: unsigned(19 downto 0);
   signal stamp_reg: unsigned(19 downto 0);
   signal stamp_next: unsigned(19 downto 0);
   signal pw: unsigned(19 downto 0); -- high pulse width
   signal data_bit: std_logic;
   signal done_reg: std_logic;
   signal done_next: std_logic;
   signal ir_reg: std_logic;
   signal rep_code: std_logic;
begin
   next_state_logic: process(state,ir_reg,index_reg,rep_code)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if ir_reg = '0' then
               next_state <= ST_LEADING_PULSE;
            end if;
         when ST_LEADING_PULSE => -- 9 ms low pulse
            if ir_reg = '1' then
               next_state <= ST_SECOND_PULSE;
            end if;
         when ST_SECOND_PULSE => -- 2.25 or 4.5 ms high pulse
            if ir_reg = '0' then
               next_state <= ST_DATA_LOW_PULSE;
            end if;
         when ST_DATA_LOW_PULSE => -- Data/command low pulse
            if ir_reg = '1' then
               next_state <= ST_DATA_HIGH_PULSE;
            end if;
         when ST_DATA_HIGH_PULSE => -- Data/command high pulse
            if ir_reg = '0' and index_reg > 0 then
               next_state <= ST_DATA_LOW_PULSE;
            elsif ir_reg = '0' and index_reg = 0 then
               next_state <= ST_STOP;
            elsif ir_reg = '1' and rep_code = '1' then
               next_state <= ST_IDLE;
            end if;
         when ST_STOP => -- End of data reception
            if ir_reg = '1' then
               next_state <= ST_DONE;
            end if;
         when ST_DONE =>
            next_state <= ST_IDLE;
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
   
   moore_outputs: process(state,clks_reg)
   begin
      clks_next <= clks_reg;
      done_next <= '0';
      case state is
         when ST_DATA_LOW_PULSE | ST_DATA_HIGH_PULSE =>
            clks_next <= clks_reg + 1;
         when ST_DONE =>
            done_next <= '1';
         when others =>
      end case;
   end process;
   
   pw <= clks_reg - stamp_reg;
   data_bit <= '0' when pw < to_unsigned(REF_PW,pw'length) else '1';
   rep_code <= '1' when pw = to_unsigned(REPEAT,pw'length) and  
                        state = ST_DATA_HIGH_PULSE else '0';
   
   mealy_outputs: process(state,ir_reg,index_reg,data_reg,
                          clks_reg,stamp_reg,data_bit)
   begin
      index_next <= index_reg;
      data_next <= data_reg;
      stamp_next <= stamp_reg;
      case state is
         when ST_DATA_LOW_PULSE =>
            if ir_reg = '1' then
               stamp_next <= clks_reg;
            end if;
         when ST_DATA_HIGH_PULSE =>
            if ir_reg = '0' and index_reg > 0 then
               index_next <= index_reg - 1;
               data_next(index_reg) <= data_bit;
            elsif ir_reg = '0' and index_reg = 0 then
               index_next <= 31;
               data_next(index_reg) <= data_bit;
            end if;
         when others =>
      end case;   
   end process;
   
   buffered_outputs: data_out <= data_reg(15 downto 0);
                     done <= done_reg;
   
   -- To drive active low LED for debugging purposes.
   err <= '0' when data_reg(7 downto 0) = not(data_reg(15 downto 8)) and
                   data_reg(23 downto 16) = not(data_reg(31 downto 24)) 
   else   '1';
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         index_reg <= 31;
         data_reg <= (others => '0');
         clks_reg <= (others => '0');
         stamp_reg <= (others => '0');
         done_reg <= '0';
         ir_reg <= '1';
      elsif rising_edge(clk) then
         index_reg <= index_next;
         data_reg <= data_next;
         clks_reg <= clks_next;
         stamp_reg <= stamp_next;
         done_reg <= done_next;
         ir_reg <= ir;
      end if;  
   end process;
end tl1838_decoder_rtl;

