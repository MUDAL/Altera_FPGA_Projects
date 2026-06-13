--MIT License
--
--Copyright (c) 2024 Olaoluwa Raji
--
--Permission is hereby granted, free of charge, to any person obtaining a copy
--of this software and associated documentation files (the "Software"), to deal
--in the Software without restriction, including without limitation the rights
--to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
--copies of the Software, and to permit persons to whom the Software is
--furnished to do so, subject to the following conditions:
--
--The above copyright notice and this permission notice shall be included in all
--copies or substantial portions of the Software.
--
--THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
--OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
--SOFTWARE.
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
   constant SDRAM_CAS_LATENCY:   integer := 2;
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