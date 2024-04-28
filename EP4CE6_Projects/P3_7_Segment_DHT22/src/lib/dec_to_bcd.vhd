library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Decimal to BCD converter

entity dec_to_bcd is
   generic(DATA_WIDTH: integer := 16);
   port(rst_n: in std_logic;
        clk: in std_logic;
        en: in std_logic;
        dec: in std_logic_vector(DATA_WIDTH - 1 downto 0);
        bcd: out std_logic_vector(11 downto 0);
        done: out std_logic);
end dec_to_bcd;

architecture dec_to_bcd_rtl of dec_to_bcd is
   type fsm is (ST_IDLE, ST_CALC, ST_DONE);
   signal state: fsm;
   signal next_state: fsm;
   signal num_reg: unsigned(DATA_WIDTH - 1 downto 0);
   signal num: unsigned(DATA_WIDTH - 1 downto 0);
   signal hundreds_reg: unsigned(3 downto 0);
   signal hundreds: unsigned(3 downto 0);
   signal tens_reg: unsigned(3 downto 0);
   signal tens: unsigned(3 downto 0);
   signal bcd_reg: unsigned(11 downto 0);
   signal bcd_next: unsigned(11 downto 0);
   signal done_reg: std_logic;
   signal done_next: std_logic;
begin
   next_state_logic: process(state,en,num_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if en = '1' then
               next_state <= ST_CALC;
            end if;
         when ST_CALC =>
            if num_reg < to_unsigned(10,num_reg'length) then
               next_state <= ST_DONE;
            end if;
         when ST_DONE =>
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
  
   combinational_logic: process(state,en,dec,num_reg,
                                hundreds_reg,tens_reg,
                                bcd_reg,done_reg)
   begin
      hundreds <= hundreds_reg;
      tens <= tens_reg;
      num <= num_reg;
      bcd_next <= bcd_reg;
      done_next <= done_reg;
      case state is
         when ST_IDLE =>
            num <= unsigned(dec);     
         when ST_CALC =>
            if num_reg >= to_unsigned(100,num_reg'length) then
               hundreds <= hundreds_reg + 1;
               num <= num_reg - 100;
            elsif num_reg >= to_unsigned(10,num_reg'length) and 
                  num_reg < to_unsigned(100,num_reg'length) then
               tens <= tens_reg + 1;
               num <= num_reg - 10;
            else
               bcd_next(11 downto 8) <= hundreds_reg;
               bcd_next(7 downto 4) <= tens_reg;
               bcd_next(3 downto 0) <= num_reg(3 downto 0);
               done_next <= '1';
            end if;
         when ST_DONE =>
            if en = '0' then
               hundreds <= (others => '0');
               tens <= (others => '0');
               done_next <= '0';
            end if;
      end case;
   end process;
  
   bcd <= std_logic_vector(bcd_reg);
   done <= done_reg;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         hundreds_reg <= (others => '0');
         tens_reg <= (others => '0');
         num_reg <= (others => '0');
         bcd_reg <= (others => '0');
         done_reg <= '0';  
      elsif rising_edge(clk) then
         hundreds_reg <= hundreds;
         tens_reg <= tens;
         num_reg <= num;
         bcd_reg <= bcd_next;
         done_reg <= done_next;
      end if;
   end process;
end dec_to_bcd_rtl;
