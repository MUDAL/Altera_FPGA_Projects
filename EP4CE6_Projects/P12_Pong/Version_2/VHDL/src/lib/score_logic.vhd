library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

-- Scoreboard module

entity score_logic is
   generic(MAX_SCORE: integer := 11);
   port(rst_n:            in std_logic;
        clk:              in std_logic;
        crash:            in std_logic_vector(1 downto 0);
        score1_bcd_tens: out std_logic_vector(DIG_ADDR_WIDTH - 1 downto 0);
        score1_bcd_ones: out std_logic_vector(DIG_ADDR_WIDTH - 1 downto 0);
        score2_bcd_tens: out std_logic_vector(DIG_ADDR_WIDTH - 1 downto 0);
        score2_bcd_ones: out std_logic_vector(DIG_ADDR_WIDTH - 1 downto 0);
        valid_scores:    out std_logic;
        winner:          out std_logic_vector(1 downto 0)); -- Bit 1:0 -> Player 1:2
end score_logic;

architecture score_logic_rtl of score_logic is
   constant RIGHT_CRASH: std_logic_vector(1 downto 0) := "01";
   constant LEFT_CRASH:  std_logic_vector(1 downto 0) := "10";
   ------------------------------------------------------------------
   type fsm is (ST_IDLE,
                ST_WAIT,
                ST_CALC,
                ST_DONE);
   signal state:      fsm;
   signal next_state: fsm;
   ------------------------------------------------------------------
   signal score1_reg:  unsigned(7 downto 0);
   signal score1_next: unsigned(7 downto 0);
   signal score2_reg:  unsigned(7 downto 0);
   signal score2_next: unsigned(7 downto 0);
   ------------------------------------------------------------------
   signal shift1_reg:  unsigned(7 downto 0);
   signal shift1_next: unsigned(7 downto 0);
   signal shift2_reg:  unsigned(7 downto 0);
   signal shift2_next: unsigned(7 downto 0);
   ------------------------------------------------------------------
   signal bin1_reg:    unsigned(7 downto 0);
   signal bin1_next:   unsigned(7 downto 0);
   signal bin2_reg:    unsigned(7 downto 0);
   signal bin2_next:   unsigned(7 downto 0);
   ------------------------------------------------------------------
   signal cnt_reg:     integer range 7 downto 0;
   signal cnt_next:    integer range 7 downto 0;
   ------------------------------------------------------------------
   signal bcd1_d0:     unsigned(3 downto 0);
   signal bcd1_d1:     unsigned(3 downto 0);
   signal bcd2_d0:     unsigned(3 downto 0);
   signal bcd2_d1:     unsigned(3 downto 0);
   ------------------------------------------------------------------
   signal bcd1_out:    unsigned(7 downto 0);
   signal bcd2_out:    unsigned(7 downto 0);
   ------------------------------------------------------------------
   signal bcd1_reg:    unsigned(7 downto 0);
   signal bcd1_next:   unsigned(7 downto 0);
   signal bcd2_reg:    unsigned(7 downto 0);
   signal bcd2_next:   unsigned(7 downto 0);
   ------------------------------------------------------------------
   signal en_conv:     std_logic; -- Enable binary to BCD conversion
   signal conv_done:   std_logic;
   signal p1_wins:     std_logic;
   signal p2_wins:     std_logic;
begin
   next_state_logic: process(state,
                             en_conv,
                             cnt_reg)
   begin
      next_state <= state;
      case state is
         when ST_IDLE =>
            if en_conv = '1' then
               next_state <= ST_WAIT;
            end if;
            
         when ST_WAIT =>
            next_state <= ST_CALC;
            
         when ST_CALC =>
            if cnt_reg = 0 then
               next_state <= ST_DONE;
            end if;
            
         when ST_DONE =>
            next_state <= ST_IDLE;
            
      end case;
   end process;
   
   en_conv <= '1' when crash = RIGHT_CRASH or crash = LEFT_CRASH else '0'; 
   
   -- Concatenate all BCD digits
   bcd1_out <= bcd1_d1 & bcd1_d0;
   bcd2_out <= bcd2_d1 & bcd2_d0;
   
   -- Dabble-logic (Add-3)
   shift1_next(3 downto 0) <= bcd1_d0 + 3 when bcd1_d0 > 4 else bcd1_d0;                           
   shift1_next(7 downto 4) <= bcd1_d1 + 3 when bcd1_d1 > 4 else bcd1_d1;
   shift2_next(3 downto 0) <= bcd2_d0 + 3 when bcd2_d0 > 4 else bcd2_d0;                           
   shift2_next(7 downto 4) <= bcd2_d1 + 3 when bcd2_d1 > 4 else bcd2_d1;   
   
   moore_outputs: process(state,
                          shift1_reg,
                          shift2_reg,
                          score1_reg,
                          score2_reg,
                          bin1_reg,
                          bin2_reg,
                          bcd1_reg,
                          bcd2_reg,
                          bcd1_out,
                          bcd2_out)
   begin
      bcd1_d1   <= (others => '0');
      bcd1_d0   <= (others => '0');
      bin1_next <= score1_reg;
      bcd1_next <= bcd1_reg;
      -----------------------------------------------
      bcd2_d1   <= (others => '0');
      bcd2_d0   <= (others => '0');
      bin2_next <= score2_reg;
      bcd2_next <= bcd2_reg;
      -----------------------------------------------
      conv_done <= '0';
      case state is  
         when ST_IDLE =>
         
         when ST_WAIT =>
         
         when ST_CALC =>
            bcd1_d1   <= shift1_reg(6 downto 3);
            bcd1_d0   <= shift1_reg(2 downto 0) & bin1_reg(7);            
            bin1_next <= bin1_reg(6 downto 0) & '0';
            bcd1_next <= bcd1_out;
            -----------------------------------------------
            bcd2_d1   <= shift2_reg(6 downto 3);
            bcd2_d0   <= shift2_reg(2 downto 0) & bin2_reg(7);
            bin2_next <= bin2_reg(6 downto 0) & '0';
            bcd2_next <= bcd2_out;
            
         when ST_DONE =>     
            conv_done <= '1';
            
      end case;
   end process;
   
   mealy_outputs: process(state,
                          score1_reg,
                          score2_reg,
                          crash,
                          cnt_reg)
   begin
      score1_next <= score1_reg;
      score2_next <= score2_reg;
      cnt_next    <= cnt_reg; 
      case state is
         when ST_IDLE =>
            -----------------------------------------------
            case crash is
               when RIGHT_CRASH =>
                  if score1_reg /= MAX_SCORE then
                     score1_next <= score1_reg + 1;
                  end if;
                  
               when LEFT_CRASH =>
                  if score2_reg /= MAX_SCORE then
                     score2_next <= score2_reg + 1;
                  end if;
                  
               when others =>
            end case;
            -----------------------------------------------
         when ST_WAIT =>
         
         when ST_CALC =>
            if cnt_reg = 0 then
               cnt_next <= 7;
            else
               cnt_next <= cnt_reg - 1;
            end if;
            
         when ST_DONE =>
         
      end case;
   end process;  
   
   p1_wins <= '1' when score1_reg = MAX_SCORE and score2_reg /= MAX_SCORE 
      else    '0';
   
   p2_wins <= '1' when score2_reg = MAX_SCORE and score1_reg /= MAX_SCORE
      else    '0';   
   
   -- Top-level outputs
   score1_bcd_tens <= std_logic_vector(bcd1_reg(7 downto 4));
   score1_bcd_ones <= std_logic_vector(bcd1_reg(3 downto 0));
   score2_bcd_tens <= std_logic_vector(bcd2_reg(7 downto 4));
   score2_bcd_ones <= std_logic_vector(bcd2_reg(3 downto 0));
   valid_scores    <= conv_done;
   winner          <= p1_wins & p2_wins;
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state      <= ST_IDLE;
         score1_reg <= (others => '0');
         score2_reg <= (others => '0');
         shift1_reg <= (others => '0');
         shift2_reg <= (others => '0');
         bin1_reg   <= (others => '0');
         bin2_reg   <= (others => '0');
         bcd1_reg   <= (others => '0');
         bcd2_reg   <= (others => '0');
         cnt_reg    <= 7;
      elsif rising_edge(clk) then
         state      <= next_state;
         score1_reg <= score1_next;
         score2_reg <= score2_next;
         shift1_reg <= shift1_next;
         shift2_reg <= shift2_next;
         bin1_reg   <= bin1_next;
         bin2_reg   <= bin2_next;
         bcd1_reg   <= bcd1_next;
         bcd2_reg   <= bcd2_next;
         cnt_reg    <= cnt_next;
      end if;
   end process;
end score_logic_rtl;