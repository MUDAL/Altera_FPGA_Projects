library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;
use work.pack_tb.all;

entity sdram_model is
   generic(DEBUG_MSG:    debug_t := SDRAM_DEBUG_ON;
           CLK_FREQ_MHZ: real    := SDRAM_CLK_FREQ_MHZ;
           PWR_DELAY_NS: real    := SDRAM_INIT_DELAY_NS;
           MAX_ROWS:     integer := MAX_ROWS;
           MAX_COLS:     integer := MAX_COLS;
           DATA_WIDTH:   integer := SDRAM_DATA_WIDTH);
           
   port(rst_n:               in std_logic;
        clk:                 in std_logic;
        start:               in std_logic;
        enable_write_mode:   in std_logic;
        enable_read_mode:    in std_logic;
        data_in:             in std_logic_vector(DATA_WIDTH - 1 downto 0);      
        enable_transmitter: out std_logic;
        enable_receiver:    out std_logic;
        data_out:           out std_logic_vector(DATA_WIDTH - 1 downto 0);
        done:               out std_logic);
end sdram_model;

architecture sdram_model_behav of sdram_model is
   signal en_transmitter: std_logic;
   signal en_receiver:    std_logic;
   signal d_out:          unsigned(DATA_WIDTH - 1 downto 0);
   signal memory_model:   memory_t := (others => (others => (others => '0')));
   signal rows_written:   unsigned(log_base2(MAX_ROWS) downto 0) := (others => '0');
   signal rows_read:      unsigned(log_base2(MAX_ROWS) downto 0) := (others => '0');
   signal debug_refresh:  std_logic;
   signal write_complete: std_logic := '0';
   signal read_complete:  std_logic := '0';
begin
   uut: entity work.sdram_controller(sdram_controller_rtl)
   generic map(CLK_FREQ_MHZ    => SDRAM_CLK_FREQ_MHZ,
               PWR_DELAY_NS    => PWR_DELAY_NS,
               MAX_ROWS        => MAX_ROWS,
               MAX_COLS        => MAX_COLS) 
   port map(rst_n              => rst_n,
            clk                => clk,
            start              => start,
            enable_write_mode  => enable_write_mode,
            enable_read_mode   => enable_read_mode,
            incoming_data      => (others => '0'),
            enable_transmitter => en_transmitter,
            enable_receiver    => en_receiver,
            debug_refresh      => debug_refresh);
   
   -- Memory write access
   write_to_memory: process
   begin
      wait until en_transmitter = '1';
      
      report "[SDRAM: Start writing]";
      
      for column_count in 0 to MAX_COLS - 1 loop
         if DEBUG_MSG = SDRAM_DEBUG_ON then 
            report "[SDRAM: Write (Row, Column)]: "
                   & "["
                   & integer'image(to_integer(rows_written))
                   & ", "
                   & integer'image(column_count)
                   & "] "
                   & "Data = "
                   & integer'image(to_integer(unsigned(data_in)));
         end if;
         
         memory_model(to_integer(rows_written), column_count) 
                   <= std_logic_vector(unsigned(data_in));
         
         wait on data_in for 10 * CLK_PERIOD;
      end loop;
      
      if rows_written = MAX_ROWS - 1 then
         report "SDRAM: Write complete";
         write_complete <= '1';
         wait;
      end if;
      
      rows_written <= rows_written + 1;
   end process;
   
   -- Memory read access
   read_from_memory: process
   begin
      wait until en_receiver = '1';
      
      report "[SDRAM: Start reading]";
      
      for column_count in 0 to MAX_COLS - 1 loop
         d_out <= unsigned(memory_model(to_integer(rows_read), 
                                        column_count));                          
         wait until rising_edge(clk);
         
         if DEBUG_MSG = SDRAM_DEBUG_ON then
            report "[SDRAM: Read (Row, Column)]: "
                   & "["   
                   & integer'image(to_integer(rows_read)) 
                   & ", "
                   & integer'image(column_count)
                   & "] " 
                   & "Data = "
                   & integer'image(to_integer(d_out));
         end if;                       
      end loop;
      
      if rows_read = MAX_ROWS - 1 then
         report "SDRAM: Read complete";
         read_complete <= '1';
         wait;
      end if;     
      
      rows_read <= rows_read + 1;
   end process;
   
   enable_transmitter <= en_transmitter;
   enable_receiver    <= en_receiver;
   data_out           <= std_logic_vector(d_out);
   
   done <= write_complete and read_complete;
   
   sdram_refresh_monitor: process
   begin
      if DEBUG_MSG = SDRAM_DEBUG_ON then
         wait until debug_refresh = '1';
         report "--------------------------------------------------------------"
              & "----------------- TIME FOR REFRESH -----------------" 
              & "--------------------------------------------------------------";
                  
         wait until debug_refresh = '0';
         report "--------------------------------------------------------------"
              & "----------------- REFRESH DONE -----------------"
              & "--------------------------------------------------------------";
      else
         wait;
      end if;
   end process;
   
end sdram_model_behav;