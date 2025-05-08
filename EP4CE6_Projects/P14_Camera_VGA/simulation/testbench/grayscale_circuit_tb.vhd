library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library work;
use work.pkg.all;

entity grayscale_circuit_tb is
end grayscale_circuit_tb;

architecture grayscale_circuit_behav of grayscale_circuit_tb is
   signal y_component:   std_logic_vector(7 downto 0) := x"00";
   signal vga_grayscale: std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal done:          std_logic := '0';
begin
   uut: entity work.grayscale_circuit(grayscale_circuit_rtl)
   port map(y_component   => y_component,
            vga_grayscale => vga_grayscale);
   
   stimulus: process
   begin
      for i in 0 to 255 loop
         y_component <= std_logic_vector(to_unsigned(i,y_component'length));
         wait for 10 ns;
      end loop;
      done <= '1';
      wait;
   end process;
   
   simulation_control: process
   begin
      wait until done = '1';
      wait;
   end process;
end grayscale_circuit_behav;