library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Binary to BCD conversion using the Double Dabble method. 

entity bin_to_bcd is
   port(rst_n: in std_logic;
        clk:   in std_logic;
        en:    in std_logic;
        bin:   in std_logic_vector(7 downto 0);
        bcd:  out std_logic_vector(11 downto 0);
        done: out std_logic);      
end bin_to_bcd;

architecture bin_to_bcd_rtl of bin_to_bcd is
   type fsm is (ST_IDLE, 
                ST_CALC, 
                ST_DONE);
   signal state:      fsm;
   signal next_state: fsm;
   ------------------------------------------------------------------
   signal cnt_reg:    integer range 7 downto 0;
   signal cnt_next:   integer range 7 downto 0;
   signal bin_reg:    std_logic_vector(7 downto 0);
   signal bin_next:   std_logic_vector(7 downto 0);
   signal shift_reg:  unsigned(11 downto 0);
   signal shift_next: unsigned(11 downto 0);
   signal bcd_d0:     unsigned(3 downto 0);
   signal bcd_d1:     unsigned(3 downto 0);
   signal bcd_d2:     unsigned(3 downto 0);
   signal bcd_out:    unsigned(11 downto 0);
   signal bcd_reg:    unsigned(11 downto 0);
   signal bcd_next:   unsigned(11 downto 0);
   signal done_reg:   std_logic;
   signal done_next:  std_logic;
begin
   next_state_logic: process(state,
                             en,
                             cnt_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if en = '1' then
               next_state <= ST_CALC;
            end if;
            
         when ST_CALC =>
            if cnt_reg = 0 then
               next_state <= ST_DONE;
            end if;
            
         when ST_DONE =>
            if en = '0' then
               next_state <= ST_IDLE;
            end if;
            
      end case;
   end process;

   -- Concatenate all BCD digits
   bcd_out <= bcd_d2 & bcd_d1 & bcd_d0;
   
   -- Double-logic (Shift-left)
   bcd_d0 <= shift_reg(02 downto 00) & bin_reg(7) 
             when state = ST_CALC else (others => '0');
     
   bcd_d1 <= shift_reg(06 downto 03) 
             when state = ST_CALC else (others => '0');
     
   bcd_d2 <= shift_reg(10 downto 07) 
             when state = ST_CALC else (others => '0');
   
   -- Dabble-logic (Add-3)
   shift_next(03 downto 00) <= bcd_d0 + 3 when bcd_d0 > 4 else bcd_d0;                           
   shift_next(07 downto 04) <= bcd_d1 + 3 when bcd_d1 > 4 else bcd_d1;                         
   shift_next(11 downto 08) <= bcd_d2 + 3 when bcd_d2 > 4 else bcd_d2;   
   
   -- Moore Outputs
   bin_next <= bin when state = ST_IDLE
       else    bin_reg(6 downto 0) & '0' when state = ST_CALC
       else    bin_reg; 
       
   bcd_next <= bcd_out when state = ST_CALC else bcd_reg;
   
   done_next <= '1' when state = ST_DONE else '0';
       
   -- Mealy Output
   -- Counter to count number of left shifts
   cnt_next <= cnt_reg - 1 when state = ST_CALC and cnt_reg > 0
       else       7        when state = ST_DONE
       else    cnt_reg;
   
   -- Top-Level Outputs
   bcd  <= std_logic_vector(bcd_reg);
   done <= done_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state     <= ST_IDLE;
         cnt_reg   <= 7;
         bin_reg   <= (others => '0');
         shift_reg <= (others => '0');
         bcd_reg   <= (others => '0');
         done_reg  <= '0';
      elsif rising_edge(clk) then
         state     <= next_state;
         cnt_reg   <= cnt_next;
         bin_reg   <= bin_next;
         shift_reg <= shift_next;
         bcd_reg   <= bcd_next;
         done_reg  <= done_next;
      end if;
   end process;
end bin_to_bcd_rtl;
