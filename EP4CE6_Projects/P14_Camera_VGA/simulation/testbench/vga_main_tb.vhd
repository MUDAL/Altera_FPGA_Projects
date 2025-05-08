library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pack_tb.all;
use work.pkg.all;

entity vga_main_tb is
end vga_main_tb;

architecture vga_main_behav of vga_main_tb is
   signal rst_n:            std_logic;
   signal clk:              std_logic := '0';
   signal enable:           std_logic := '1';
   signal data_in:          std_logic_vector(DATA_WIDTH - 1 downto 0) := x"0000";
   signal fifo_read_enable: std_logic;
   signal hsync:            std_logic;
   signal vsync:            std_logic;
   signal rgb:              std_logic_vector(DATA_WIDTH - 1 downto 0);
begin
   uut: entity work.vga_main(vga_main_rtl)
   generic map(DATA_WIDTH    => DATA_WIDTH)
   port map(rst_n            => rst_n,
            clk              => clk,
            enable           => enable,
            data_in          => data_in,
            fifo_read_enable => fifo_read_enable,
            hsync            => hsync,
            vsync            => vsync,
            rgb              => rgb);
   
   -- Reset generator
   rst_n <= '0', '1' after 2 * CLK_PERIOD;
   
   clock_generation: process
   begin
      wait for CLK_PERIOD / 2;
      clk <= not clk;
   end process;

   output_report: process
      variable count: unsigned(19 downto 0) := (others => '0');
   begin
      wait until rst_n = '1';
      while true loop
         wait until fifo_read_enable = '1';
         data_in <= std_logic_vector(count(DATA_WIDTH - 1 downto 0));
         
         if count = 307200 then
            exit;
         else
            count := count + 1;
         end if;
      end loop;
      
      assert false report "Simulation done" severity failure;
      wait;
   end process;
end vga_main_behav;