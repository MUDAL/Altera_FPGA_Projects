library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

-- Package that contains constants and function(s) that ....
-- are relevant to the project.

package pkg is
   constant DATA_WIDTH:          integer := 16;
   constant CLK_FREQ_HZ:         integer := 100_000_000;
   ------------------------------------------------------------------
   constant SDRAM_DATA_WIDTH:    integer := DATA_WIDTH;
   constant SDRAM_CLK_FREQ_MHZ:  real    := real(CLK_FREQ_HZ / 1_000_000);
   constant SDRAM_INIT_DELAY_NS: real    := 200_000.0;
   constant SDRAM_CAS_LATENCY:   integer := 2; -- Either 2 or 3
   constant SDRAM_MAX_ROWS:      integer := 4;
   constant SDRAM_MAX_COLS:      integer := 16;
   ------------------------------------------------------------------
   constant UART_BAUD_RATE:      integer := 9_600;
   constant UART_CLK_FREQ_HZ:    integer := CLK_FREQ_HZ;
   ------------------------------------------------------------------
   constant BUTTON_CLK_FREQ_HZ:  integer := CLK_FREQ_HZ;
   constant BUTTON_DEB_DELAY_MS: integer := 5;
   ------------------------------------------------------------------
   constant FIFO_ADDR_WIDTH:     integer := 4;
   constant FIFO_DATA_WIDTH:     integer := DATA_WIDTH;
   ------------------------------------------------------------------
   constant ROM_ADDR_WIDTH:      integer := 6;
   constant ROM_DATA_WIDTH:      integer := DATA_WIDTH;   
   ------------------------------------------------------------------
   function log_base2(param: integer) return integer;
   function nano2clks(nano:  real)    return integer;
   ------------------------------------------------------------------
end package pkg;

package body pkg is
   ------------------------------------------------------------------
   function log_base2(param: integer) return integer is
   begin
      return integer(ceil(log2(real(param))));
   end function log_base2;
   ------------------------------------------------------------------
   function nano2clks(nano: real) return integer is
   begin
      return integer(ceil(nano * SDRAM_CLK_FREQ_MHZ / 1000.0));
   end function nano2clks;
   ------------------------------------------------------------------
end package body pkg;