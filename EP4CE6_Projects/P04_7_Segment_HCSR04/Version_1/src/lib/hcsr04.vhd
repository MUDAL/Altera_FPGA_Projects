library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Module for interfacing the FPGA with the HCSR04 sensor.

entity hcsr04 is
   port(rst_n:  in std_logic;
        clk:    in std_logic;
        en:     in std_logic;
        echo:   in std_logic;
        trig:  out std_logic;
        pulse: out std_logic_vector(15 downto 0);
        done:  out std_logic);
end hcsr04;

architecture hcsr04_rtl of hcsr04 is
   -- 50MHz clock: 50 cycles = 1uS
   constant CLKS_PER_US: integer := 49;
   constant TRIG_PULSE:  integer := 14; -- 15uS trigger pulse (0 to 14)
   
   type fsm is (ST_IDLE, 
                ST_TRIG, 
                ST_SAMPLE, 
                ST_MEASURE, 
                ST_DONE);
                
   signal state:      fsm;
   signal next_state: fsm;
   ------------------------------------------------------------------
   signal cnt_en:     std_logic;
   signal clks:       unsigned(5 downto 0);
   signal micro_clks: unsigned(15 downto 0);
   signal trig_next:  std_logic; -- Sensor trigger
   signal trig_reg:   std_logic;   
   signal new_io:     std_logic; -- Current sample of 'echo' signal
   signal new_io_reg: std_logic;
   signal old_io:     std_logic; -- Previous sample of 'echo' signal
   signal old_io_reg: std_logic;
   signal pos_edge:   unsigned(15 downto 0); -- Echo: +ve edge (or pulse width)
   signal pos_reg:    unsigned(15 downto 0);
   signal done_next:  std_logic;
   signal done_reg:   std_logic;
begin
   counters: process(rst_n,clk)
   begin
      if rst_n = '0' then
         clks       <= (others => '0');
         micro_clks <= (others => '0');
      elsif rising_edge(clk) then
         if cnt_en = '1' then
            if clks = to_unsigned(CLKS_PER_US,clks'length) then
               clks       <= (others => '0');
               micro_clks <= micro_clks + 1;
            else
               clks <= clks + 1;
            end if;
         else
            clks       <= (others => '0');
            micro_clks <= (others => '0');
         end if;
      end if;
   end process;
   
   next_state_logic: process(state,
                             en,
                             micro_clks,
                             new_io_reg,
                             old_io_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if en = '1' then
               next_state <= ST_TRIG;
            end if;
            
         when ST_TRIG =>
            if micro_clks = to_unsigned(TRIG_PULSE,micro_clks'length) then
               next_state <= ST_SAMPLE;
            end if;
            
         when ST_SAMPLE =>
            next_state <= ST_MEASURE;
            
         when ST_MEASURE =>
            if new_io_reg = old_io_reg then
               next_state <= ST_SAMPLE;
            elsif new_io_reg = '0' and old_io_reg = '1' then
               next_state <= ST_DONE;
            end if;
            
         when ST_DONE =>
            if en = '0' then
               next_state <= ST_IDLE;
            end if;
            
      end case;
   end process;
   
   -- Moore outputs
   done_next <= '0' when state = ST_IDLE
        else    '1' when state = ST_DONE
        else    done_reg;
        
   new_io <= echo when state = ST_SAMPLE 
     else    new_io_reg;
   
   mealy_outputs: process(state,
                          micro_clks,
                          trig_reg,
                          new_io_reg,
                          old_io_reg,
                          pos_reg)
   begin
      trig_next <= trig_reg;
      old_io    <= old_io_reg;
      pos_edge  <= pos_reg;
      case state is
         when ST_IDLE =>
            trig_next <= '0';
            cnt_en    <= '0';
         when ST_TRIG =>
            if micro_clks = to_unsigned(TRIG_PULSE,micro_clks'length) then
               trig_next <= '0';
               cnt_en    <= '0';
            else
               trig_next <= '1';
               cnt_en    <= '1';
            end if;
            
         when ST_SAMPLE => 
            cnt_en <= old_io_reg;
            
         when ST_MEASURE =>
            if new_io_reg = '1' and old_io_reg = '0' then
               cnt_en   <= '1';
               old_io   <= '1';
               pos_edge <= micro_clks;
            elsif new_io_reg = '0' and old_io_reg = '1' then
               cnt_en   <= '0';
               old_io   <= '0';
               pos_edge <= micro_clks - pos_reg; -- Pulse width (microseconds)
            elsif new_io_reg = '0' and old_io_reg = '0' then
               cnt_en <= '0';
            else
               cnt_en <= '1';
            end if;
            
         when ST_DONE =>
            cnt_en <= '0';
            
      end case;
   end process;
   
   -- Outputs
   trig  <= trig_reg;
   pulse <= std_logic_vector(pos_reg);
   done  <= done_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state      <= ST_IDLE;
         trig_reg   <= '0';
         new_io_reg <= '0';
         old_io_reg <= '0';
         pos_reg    <= (others => '0');
         done_reg   <= '0';
      elsif rising_edge(clk) then
         state      <= next_state;
         trig_reg   <= trig_next;
         new_io_reg <= new_io;
         old_io_reg <= old_io;
         pos_reg    <= pos_edge;
         done_reg   <= done_next;
      end if;
   end process;
end hcsr04_rtl;

