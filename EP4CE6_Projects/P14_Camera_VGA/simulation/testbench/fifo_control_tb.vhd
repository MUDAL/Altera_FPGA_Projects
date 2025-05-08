library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
library work;
use work.pack_tb.all;
use work.pkg.all;

entity fifo_control_tb is
end fifo_control_tb;

architecture fifo_control_behav of fifo_control_tb is
   signal rst_n:          std_logic;
   signal clk:            std_logic := '0';
   signal writer_valid:   std_logic := '0'; 
   signal reader_ready:   std_logic := '0'; 
   signal write_addr:     std_logic_vector(FIFO_ADDR_WIDTH - 1 downto 0);
   signal read_addr:      std_logic_vector(FIFO_ADDR_WIDTH - 1 downto 0);
   signal fifo_full:      std_logic;
   signal fifo_empty:     std_logic;
   signal almost_full:    std_logic;
   signal almost_empty:   std_logic;
   signal write_addr_int: integer range 0 to 2**FIFO_ADDR_WIDTH - 1 := 0; 
   signal read_addr_int:  integer range 0 to 2**FIFO_ADDR_WIDTH - 1 := 0;
begin
   uut: entity work.fifo_control(fifo_control_rtl)
   generic map(ADDR_WIDTH  => FIFO_ADDR_WIDTH,
               WRITES_LEFT => FIFO_WRITES_LEFT,
               READS_LEFT  => FIFO_READS_LEFT)
   port map(rst_n          => rst_n,
            clk            => clk,
            writer_valid   => writer_valid,
            reader_ready   => reader_ready,
            write_addr     => write_addr,
            read_addr      => read_addr,
            fifo_full      => fifo_full,
            fifo_empty     => fifo_empty,
            almost_full    => almost_full,
            almost_empty   => almost_empty);
   
   -- Reset generation
   rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process;
   
   stimuli: process
   begin
      wait until rst_n = '1';
      report "[INFO]: " & integer'image(2**FIFO_ADDR_WIDTH) & " writes";
      
      wait until rising_edge(clk);
      writer_valid <= '1';
      wait until fifo_full = '1';
      
      writer_valid <= '0';
      reader_ready <= '1';
      wait;
   end process;
   
   write_addr_int <= to_integer(unsigned(write_addr));
   read_addr_int  <= to_integer(unsigned(read_addr));  
   
   output_verification: process
      variable almost_full_flag:  std_logic := '0';
      variable almost_empty_flag: std_logic := '0';
   begin
      wait until rst_n = '1';
      wait until rising_edge(clk);
      
      while fifo_full = '0' loop
         report "[WRITE]: " & integer'image(write_addr_int) & ", " &
                "[READ]: "  & integer'image(read_addr_int);
                
         if almost_full = '1' then
            if almost_full_flag = '0' then
               report "[INFO]: FIFO almost full";
               almost_full_flag := '1';
            end if;
         end if;
         
         wait until rising_edge(clk);
      end loop;
      
      report "[WRITE]: " & integer'image(write_addr_int) & ", " &
             "[READ]: "  & integer'image(read_addr_int)  & ", " &    
             "FIFO is full";     
      
      while fifo_empty = '0' loop
         report "[WRITE]: " & integer'image(write_addr_int) & ", " &
                "[READ]: "  & integer'image(read_addr_int);
                
         if almost_empty = '1' then
            if almost_empty_flag = '0' then
               report "[INFO]: FIFO almost empty";
               almost_empty_flag := '1';
            end if;
         end if;
         
         wait until rising_edge(clk);
      end loop;
      
      report "[WRITE]: " & integer'image(write_addr_int) & ", " &
             "[READ]: "  & integer'image(read_addr_int)  & ", " &    
             "FIFO is empty";
             
      assert false report "Simulation done" severity failure;     
      wait;
   end process;
   
end fifo_control_behav;
