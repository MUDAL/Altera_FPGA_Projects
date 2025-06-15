library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
library work;
use work.pkg.all;

-- SDRAM controller: Module to interface the FPGA with a Hynix
-- HY57V641620ETP-H SDRAM chip.

entity sdram_controller is
   generic(CLK_FREQ_MHZ: real    := SDRAM_CLK_FREQ_MHZ;
           PWR_DELAY_NS: real    := SDRAM_INIT_DELAY_NS;
           CAS_LATENCY:  integer := SDRAM_CAS_LATENCY;
           MAX_ROWS:     integer := SDRAM_MAX_ROWS;
           MAX_COLS:     integer := SDRAM_MAX_COLS;
           DATA_WIDTH:   integer := SDRAM_DATA_WIDTH);
           
   port(rst_n: in std_logic;
        clk:   in std_logic;
        -- Starts controller when PLL "locks"
        start: in std_logic; 
        -- Asserted when SDRAM is to be written to
        enable_write_mode:   in std_logic;
        -- Asserted when SDRAM is to be read from 
        enable_read_mode:    in std_logic;
        -- Data acquired from data source / transmitter
        incoming_data:       in std_logic_vector(DATA_WIDTH - 1 downto 0); 
        -- Data transferred to data receiver 
        outgoing_data:      out std_logic_vector(DATA_WIDTH - 1 downto 0);
        -- Enable data transmitter to write to SDRAM
        enable_transmitter: out std_logic;
        -- Enable data receiver to read from SDRAM  
        enable_receiver:    out std_logic;
        -- SDRAM signals
        dq:  inout std_logic_vector(DATA_WIDTH - 1 downto 0); -- Data I/O   
        sclk:  out std_logic;  -- SDRAM clock
        cke:   out std_logic;  -- SDRAM clock enable
        cs_n:  out std_logic;  -- SDRAM chip select
        ras_n: out std_logic;  -- SDRAM row address strobe
        cas_n: out std_logic;  -- SDRAM column address strobe
        we_n:  out std_logic;  -- SDRAM write enable
        addr:  out std_logic_vector(11 downto 00); -- SDRAM address
        bank:  out std_logic_vector(01 downto 00); -- SDRAM bank address
        udqm:  out std_logic;  -- SDRAM data I/O mask: UDQM
        ldqm:  out std_logic); -- SDRAM data I/O mask: LDQM
end sdram_controller;

architecture sdram_controller_rtl of sdram_controller is
   -- PWR_DELAY:  Power-up delay (200 uS)
   -- REF_PERIOD: Refresh period (maximum: 15.625 uS per row)
   -- T_RP:  RAS precharge time (20 ns minimum)
   -- T_RFC: AUTO REFRESH period (63 ns minimum)   
   -- T_MRD: Time from "Mode Register Set (MRS)" to new command (min: 2 CLKS)
   -- T_RCD: Active-Read or Write delay (20 ns minimum)
   -- CL: CAS latency (in CLKS)
   constant PWR_DELAY:  integer := nano2clks(PWR_DELAY_NS) - 1;  
   constant REF_PERIOD: integer := nano2clks(13_200.0) - 1;
   constant T_RP:       integer := nano2clks(20.0) - 1;
   constant T_RFC:      integer := nano2clks(63.0) - 1;
   constant T_MRD:      integer := nano2clks(20.0) - 1;
   constant T_RCD:      integer := nano2clks(20.0) - 1;
   constant CAS_LEN:    integer := 3; -- CAS latency bit width
   constant CAS_UNS:    unsigned(CAS_LEN - 1 downto 0) := 
                     to_unsigned(CAS_LATENCY,CAS_LEN);
   ------------------------------------------------------------------
   -- SDRAM Commands          (ras_n, cas_n, we_n)
   constant CMD_SET_MODE_REG: std_logic_vector(2 downto 0) := "000";
   constant CMD_NOP:          std_logic_vector(2 downto 0) := "111";
   constant CMD_ACTIVE:       std_logic_vector(2 downto 0) := "011";
   constant CMD_READ:         std_logic_vector(2 downto 0) := "101";
   constant CMD_WRITE:        std_logic_vector(2 downto 0) := "100";
   constant CMD_PRECHARGE:    std_logic_vector(2 downto 0) := "010";
   constant CMD_AUTO_REFRESH: std_logic_vector(2 downto 0) := "001";
   constant CMD_BURST_STOP:   std_logic_vector(2 downto 0) := "110";
   -- Burst Lengths           (A3 downto A0)
   constant BLEN_1:           unsigned(3 downto 0) := "0000";
   constant BLEN_2:           unsigned(3 downto 0) := "0001";
   constant BLEN_4:           unsigned(3 downto 0) := "0010";
   constant BLEN_8:           unsigned(3 downto 0) := "0011";
   constant BLEN_FULL:        unsigned(3 downto 0) := "0111";
   ------------------------------------------------------------------
   constant ROW_MSB: integer := log_base2(MAX_ROWS);
   constant COL_MSB: integer := log_base2(MAX_COLS) - 1;
   ------------------------------------------------------------------
   type fsm is (ST_NOP,
                ST_POWER_UP,
                ST_PRECHARGE,
                ST_AUTO_REFRESH,
                ST_SET_MODE_REG,
                ST_OPERATE,
                ST_ACTIVE,
                ST_WRITE,
                ST_READ,
                ST_BURST_STOP);         
   signal state:         fsm;
   signal next_state:    fsm;
   -- To indicate previously active state(s)
   signal old_state_reg: fsm;
   signal old_state:     fsm;
   ------------------------------------------------------------------
   signal command_reg:        std_logic_vector(2 downto 0);
   signal command_next:       std_logic_vector(2 downto 0);  
   signal enable_delay_count: std_logic;
   signal delay_count_reg:    unsigned(15 downto 00); 
   signal delay_count_next:   unsigned(15 downto 00);
   signal refresh_count_reg:  unsigned(10 downto 00);  
   signal refresh_count_next: unsigned(10 downto 00);
   ------------------------------------------------------------------ 
   signal refresh_twice_reg:  std_logic; 
   signal refresh_twice_next: std_logic;
   signal tx_enable_reg:      std_logic; 
   signal tx_enable_next:     std_logic;
   signal rx_enable_reg:      std_logic; 
   signal rx_enable_next:     std_logic;
   signal cas_shift_reg:      std_logic_vector(CAS_LATENCY - 1 downto 0);  
   signal time_to_refresh:    std_logic;
   signal init_done_reg:      std_logic; 
   signal init_done_next:     std_logic;
   ------------------------------------------------------------------
   signal addr_reg:           unsigned(11 downto 0);
   signal addr_next:          unsigned(11 downto 0);
   signal rows_written_reg:   unsigned(ROW_MSB downto 0);
   signal rows_written_next:  unsigned(ROW_MSB downto 0);
   signal rows_read_reg:      unsigned(ROW_MSB downto 0);
   signal rows_read_next:     unsigned(ROW_MSB downto 0);   
   signal cols_written_reg:   unsigned(COL_MSB downto 0);
   signal cols_written_next:  unsigned(COL_MSB downto 0);
   signal cols_read_reg:      unsigned(COL_MSB downto 0);
   signal cols_read_next:     unsigned(COL_MSB downto 0);   
begin
   -- Previous state logic
   old_state <= old_state_reg when state = ST_NOP else state;  
   
   -- The major combinational logic for the initialization and operation 
   -- modes of the SDRAM is handled by the process below.
   combinational_logic: process(state,
                                old_state_reg,
                                delay_count_reg,
                                start,
                                rows_written_reg,
                                rows_read_reg,
                                cols_written_reg,
                                cols_read_reg,
                                addr_reg,                     
                                init_done_reg,
                                time_to_refresh,
                                enable_write_mode,
                                enable_read_mode,
                                refresh_twice_reg,
                                tx_enable_reg,
                                rx_enable_reg,
                                cas_shift_reg)
   begin
      next_state         <= ST_NOP;
      command_next       <= CMD_NOP;
      addr_next          <= addr_reg;
      init_done_next     <= init_done_reg;
      tx_enable_next     <= tx_enable_reg;
      rx_enable_next     <= cas_shift_reg(0);    
      refresh_twice_next <= refresh_twice_reg;
      enable_delay_count <= '0';
      rows_written_next  <= rows_written_reg;
      rows_read_next     <= rows_read_reg;
      
      case state is
         when ST_NOP =>
            ---------------------------------------------------------
            case old_state_reg is
               when ST_NOP =>
                  if start = '1' then
                     next_state <= ST_POWER_UP;
                  end if;
                  
               when ST_POWER_UP =>
                  next_state    <= ST_PRECHARGE;
                  command_next  <= CMD_PRECHARGE;
                  addr_next(10) <= '1'; -- Precharge all banks 
                  
               when ST_PRECHARGE =>
                  if delay_count_reg = T_RP then
                     next_state   <= ST_AUTO_REFRESH;
                     command_next <= CMD_AUTO_REFRESH;
                  else
                     enable_delay_count <= '1';
                  end if;
                  
               when ST_AUTO_REFRESH =>
                  if init_done_reg = '1' then
                     if delay_count_reg = T_RFC then
                        next_state <= ST_OPERATE;
                     else
                        enable_delay_count <= '1';
                     end if;
                  else
                     if refresh_twice_reg = '0' and delay_count_reg = T_RFC then
                        next_state   <= ST_AUTO_REFRESH;
                        command_next <= CMD_AUTO_REFRESH;
                        refresh_twice_next <= '1';
                     elsif refresh_twice_reg = '1' and delay_count_reg = T_RFC then
                        next_state   <= ST_SET_MODE_REG;
                        command_next <= CMD_SET_MODE_REG;
                        addr_next(3 downto 0) <= BLEN_FULL; -- Full-page burst
                        addr_next(6 downto 4) <= CAS_UNS;   -- CAS latency
                        addr_next(10) <= '0';
                     else
                        enable_delay_count <= '1';
                     end if;
                  end if;
                  
               when ST_SET_MODE_REG =>
                  if delay_count_reg = T_MRD then
                     next_state     <= ST_OPERATE;
                     init_done_next <= '1'; -- Initialization is complete
                  else
                     enable_delay_count <= '1';
                  end if;
                  
               when ST_OPERATE =>
                  if time_to_refresh = '1' then
                     next_state    <= ST_PRECHARGE;
                     command_next  <= CMD_PRECHARGE;
                     addr_next(10) <= '1'; -- Precharge all banks
                  else
                     if enable_write_mode = '1' and rows_written_reg < MAX_ROWS then
                        next_state   <= ST_ACTIVE;
                        command_next <= CMD_ACTIVE;
                        addr_next(11 downto ROW_MSB + 1) <= (others => '0');
                        addr_next(ROW_MSB downto 0) <= rows_written_reg(ROW_MSB downto 0);
                     elsif enable_read_mode = '1' and rows_written_reg > 0 then
                        next_state   <= ST_ACTIVE;
                        command_next <= CMD_ACTIVE;
                        addr_next(11 downto ROW_MSB + 1) <= (others => '0');
                        addr_next(ROW_MSB downto 0) <= rows_read_reg(ROW_MSB downto 0);                  
                     end if;
                  end if;
                  
               when ST_ACTIVE =>
                  if delay_count_reg = T_RCD then
                     if addr_reg(ROW_MSB downto 0) = rows_written_reg(ROW_MSB downto 0) then
                        next_state   <= ST_WRITE;
                        command_next <= CMD_WRITE;
                        addr_next(7 downto COL_MSB + 1) <= (others => '0');
                        addr_next(COL_MSB downto 0)     <= cols_written_reg;
                        addr_next(10)  <= '0'; -- No auto-precharge
                        tx_enable_next <= '1';
                     elsif addr_reg(ROW_MSB downto 0) = rows_read_reg(ROW_MSB downto 0) then
                        next_state   <= ST_READ;
                        command_next <= CMD_READ;
                        addr_next(7 downto COL_MSB + 1) <= (others => '0');
                        addr_next(COL_MSB downto 0)     <= cols_read_reg;
                        addr_next(10)  <= '0'; -- No auto-precharge
                        rx_enable_next <= '1';
                     else
                        next_state <= ST_OPERATE;
                     end if;
                  else
                     enable_delay_count <= '1';
                  end if;
                  
               when ST_WRITE =>
                  if cols_written_reg = MAX_COLS - 1 then
                     next_state     <= ST_BURST_STOP;
                     command_next   <= CMD_BURST_STOP;
                     tx_enable_next <= '0';
                     if rows_written_reg < MAX_ROWS then
                        rows_written_next <= rows_written_reg + 1;
                     end if;
                  end if;
                  
               when ST_READ =>
                  if cols_read_reg = MAX_COLS - 1 then
                     next_state     <= ST_BURST_STOP;
                     command_next   <= CMD_BURST_STOP;
                     rx_enable_next <= '0';
                     if rows_read_reg < MAX_ROWS then
                        rows_read_next <= rows_read_reg + 1;                     
                     end if; 
                  end if;
                  
               when ST_BURST_STOP =>
                  next_state <= ST_OPERATE;
                  if rows_written_reg = rows_read_reg then
                     rows_written_next <= (others => '0');
                     rows_read_next    <= (others => '0');
                  end if;
            end case;
            ---------------------------------------------------------          
         when ST_POWER_UP =>
            if delay_count_reg /= PWR_DELAY then
               enable_delay_count <= '1';
               next_state <= ST_POWER_UP;
            end if;
            
         when others => 
      end case;
   end process;  
   
   delay_counter: process(enable_delay_count,delay_count_reg)
   begin
      if enable_delay_count = '1' then
         delay_count_next <= delay_count_reg + 1;
      else
         delay_count_next <= (others => '0');
      end if;
   end process;
   
   refresh_counter: process(state,
                            old_state_reg,
                            refresh_count_reg)
   begin
      if state = ST_NOP and old_state_reg = ST_OPERATE then
         if refresh_count_reg = REF_PERIOD then
            refresh_count_next <= (others => '0');
         else
            refresh_count_next <= refresh_count_reg + 1; 
         end if;
      else
         if refresh_count_reg = REF_PERIOD then
            refresh_count_next <= refresh_count_reg;
         else
            refresh_count_next <= refresh_count_reg + 1;
         end if;
      end if;
   end process;
   
   -- Logic to indicate when a refresh is required
   time_to_refresh <= '1' when refresh_count_reg = REF_PERIOD else '0';
   
   -- Tristate buffer
   dq <= incoming_data when tx_enable_reg = '1' else (others => 'Z'); 
   
   -- Count number of columns that have been written
   written_columns_counter: process(tx_enable_reg,cols_written_reg)
   begin
      if tx_enable_reg = '1' then
         cols_written_next <= cols_written_reg + 1;
      else
         cols_written_next <= (others => '0');
      end if;
   end process;
   
   -- Count number of columns that have been read
   read_columns_counter: process(rx_enable_reg,cols_read_reg)
   begin
      if rx_enable_reg = '1' then
         cols_read_next <= cols_read_reg + 1;
      else
         cols_read_next <= (others => '0');
      end if;
   end process;     
   
   -- Outputs:
   -- "CKE" is high for all commands except SELF-REFRESH
   -- "CS_N" can be set low for all commands (even NOP)
   -- U/LDQM suppress the data I/O when high
   ------------------------------------------------------------------
   cke   <= '1';   
   cs_n  <= '0';
   udqm  <= '0';
   ldqm  <= '0';
   sclk  <= clk; 
   addr  <= std_logic_vector(addr_reg);
   bank  <= (others => '0');
   ras_n <= command_reg(2);
   cas_n <= command_reg(1);
   we_n  <= command_reg(0);
   ------------------------------------------------------------------
   enable_transmitter <= tx_enable_reg;
   enable_receiver    <= rx_enable_reg;  
   outgoing_data      <= dq when rx_enable_reg = '1' else (others => '0');
   
   registers: process(rst_n,clk)
   begin
      if rst_n = '0' then
         state             <= ST_NOP;
         old_state_reg     <= ST_NOP;
         command_reg       <= CMD_NOP;
         rows_written_reg  <= (others => '0');
         rows_read_reg     <= (others => '0');
         cols_written_reg  <= (others => '0');
         cols_read_reg     <= (others => '0');
         addr_reg          <= (others => '0');
         delay_count_reg   <= (others => '0');
         refresh_count_reg <= (others => '0');
         init_done_reg     <= '0';
         refresh_twice_reg <= '0';
         tx_enable_reg     <= '0';
         rx_enable_reg     <= '0';
         cas_shift_reg     <= (others => '0');
      elsif rising_edge(clk) then
         state             <= next_state;
         old_state_reg     <= old_state;
         command_reg       <= command_next;
         rows_written_reg  <= rows_written_next;
         rows_read_reg     <= rows_read_next;
         cols_written_reg  <= cols_written_next;
         cols_read_reg     <= cols_read_next;
         addr_reg          <= addr_next;
         delay_count_reg   <= delay_count_next;
         refresh_count_reg <= refresh_count_next;
         init_done_reg     <= init_done_next;
         refresh_twice_reg <= refresh_twice_next;
         tx_enable_reg     <= tx_enable_next;
         rx_enable_reg     <= cas_shift_reg(CAS_LATENCY - 1);
         -- Shift register to handle CAS latency
         cas_shift_reg(0)  <= rx_enable_next;
         
         cas_shift_reg(CAS_LATENCY - 1 downto 1) <= 
         cas_shift_reg(CAS_LATENCY - 2 downto 0);
      end if;
   end process;   
end sdram_controller_rtl;