library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Module to interface FPGA with HD44780U LCD module.
--System clock: 50MHz

entity lcd_driver is
	port(rst_n: in std_logic;
		  clk: in std_logic;
		  rs_in: in std_logic; --Register Select (to Driver)
		  d_in: in std_logic_vector(7 downto 0); --Data in
		  rs: out std_logic; --Register Select (to LCD)
		  en: out std_logic;
		  rw: out std_logic;
		  db: out std_logic_vector(7 downto 0);
		  done: out std_logic); 
end lcd_driver;

architecture lcd_driver_rtl of lcd_driver is
	constant INVALID_DATA: std_logic_vector(7 downto 0) := x"00";
	--From HD44780U datasheet
	--Power-on delay: above 15 ms
	--Delay after 1st function set instruction: above 4.1 ms
	--Delay after 2nd function set instruction: above 100 uS
	--Enable pulse width: minimum of 230 ns
	--Enable cycle time: minimum of 500 ns
	--Worst-case instruction execution time: 45 uS (Ignoring "Return Home")
	constant PD: integer  := 749999; --Power-on Delay
	constant FD1: integer := 204999; --1st Function Set Delay
	constant FD2: integer := 4999; --2nd Function Set Delay
	constant EPW: integer := 24; --Enable Pulse Width
	constant ECT: integer := 49; --Enable Cycle Time
	constant IET: integer := 2249; --Instruction Execution Time
	-- INITIALIZATION COMMANDS
	--Function Select: DB3 = '1' selects 2 lines and 5x8 font
	--Display ON, Cursor OFF, Blinking cursor OFF
	--Clear Display
	--Entry Mode Set: Increment cursor
	constant FS_CMD:     std_logic_vector(7 downto 0) := x"38";
	constant DISP_ON:    std_logic_vector(7 downto 0) := x"0C";
	constant DISP_CLR:   std_logic_vector(7 downto 0) := x"01";
	constant ENTRY_MODE: std_logic_vector(7 downto 0) := x"06";
	-- FSM AND SIGNALS
	type fsm is (ST_IDLE, ST_INIT_1, ST_WAIT, ST_INIT_2, 
					 ST_CHECK_DATA, ST_WRITE, ST_END);
	signal state: fsm;
	signal next_state: fsm;
	signal clks: unsigned(19 downto 0);
	signal cnt_en: std_logic; --Enable clock counter
	signal en_reg: std_logic; --Enable LCD data read/write
	signal en_next: std_logic;
	signal db_reg: std_logic_vector(7 downto 0); --Data bits
	signal db_next: std_logic_vector(7 downto 0);
begin
	clock_counter: process(rst_n,clk)
	begin
		if rst_n = '0' then
			clks <= (others => '0');
		elsif rising_edge(clk) then
			if cnt_en = '1' then
				clks <= clks + 1;
			else
				clks <= (others => '0');
			end if;
		end if;
	end process;
	
	next_state_logic: process(state,clks,d_in)
	begin
		next_state <= state;
		case state is
			when ST_IDLE =>
				next_state <= ST_INIT_1;
			when ST_INIT_1 =>
				if clks = to_unsigned(PD + FD1 + FD2 + ECT + 1,clks'length) then
					next_state <= ST_WAIT;
				end if;
			when ST_WAIT =>
				next_state <= ST_INIT_2;
			when ST_INIT_2 =>
				if clks = to_unsigned(4*EPW + 40*IET,clks'length) then
					next_state <= ST_CHECK_DATA;
				end if;
			when ST_CHECK_DATA =>
			   if d_in /= INVALID_DATA then
				  next_state <= ST_WRITE;
				end if;      
			when ST_WRITE =>
				if clks = to_unsigned(ECT + IET,clks'length) then
					next_state <= ST_END;
				end if;
			when ST_END =>
				next_state <= ST_CHECK_DATA;
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

	moore_outputs: process(state,rs_in)
	begin
		case state is
			when ST_IDLE =>
				cnt_en <= '0';
				rs <= '0';	
				done <= '0';
			when ST_INIT_1 =>
				cnt_en <= '1';
				rs <= '0';
				done <= '0';
			when ST_WAIT =>
				cnt_en <= '0';
				rs <= '0';
				done <= '0';
			when ST_INIT_2 => 
				cnt_en <= '1';
				rs <= '0';
				done <= '0';
			when ST_CHECK_DATA => 
				cnt_en <= '0';
				rs <= '0';
				done <= '0';
			when ST_WRITE =>
				cnt_en <= '1';
				rs <= rs_in;
				done <= '0';
			when ST_END =>
				cnt_en <= '0';
				rs <= '0';
				done <= '1';
		end case;	
	end process;
	
	mealy_outputs: process(state,clks,d_in,en_reg,db_reg)
	begin
		en_next <= en_reg;
		db_next <= db_reg;
		case state is
			when ST_IDLE =>
			when ST_INIT_1 => -- Power-on Initialization
				if clks = to_unsigned(PD + 1,clks'length) or 
					clks = to_unsigned(PD + FD1 + 1,clks'length) or
					clks = to_unsigned(PD + FD1 + FD2 + 1,clks'length) then
					en_next <= '1';
					db_next <= FS_CMD;
				elsif clks = to_unsigned(PD + EPW + 1,clks'length) or 
						clks = to_unsigned(PD + FD1 + EPW + 1,clks'length) or
					   clks = to_unsigned(PD + FD1 + FD2 + EPW + 1,clks'length)	then
					en_next <= '0';
				end if;
			when ST_WAIT =>
			when ST_INIT_2 => -- Initialization instructions
				if clks < to_unsigned(EPW,clks'length) then
					en_next <= '1';
					db_next <= FS_CMD;
				elsif clks = to_unsigned(EPW,clks'length) then
					en_next <= '0';
				elsif clks = to_unsigned(EPW + IET,clks'length) then
					en_next <= '1';
					db_next <= DISP_ON;
				elsif clks = to_unsigned(2*EPW + IET,clks'length) then
					en_next <= '0';
				elsif clks = to_unsigned(2*EPW + 2*IET,clks'length) then
					en_next <= '1';
					db_next <= ENTRY_MODE;
				elsif clks = to_unsigned(3*EPW + 2*IET,clks'length) then
					en_next <= '0';
				elsif clks = to_unsigned(3*EPW + 3*IET,clks'length) then
					en_next <= '1';
					db_next <= DISP_CLR;
				elsif clks = to_unsigned(4*EPW + 3*IET,clks'length) then
					en_next <= '0';
				end if;
			when ST_CHECK_DATA =>
				db_next <= d_in;
			when ST_WRITE =>
				if clks < to_unsigned(EPW,clks'length) then
					en_next <= '1';
				else
					en_next <= '0';
				end if;
			when ST_END =>
		end case;	
	end process;
	
	rw <= '0';
	en <= en_reg;
	db <= db_reg;
	
	registered_outputs: process(rst_n,clk)
	begin
		if rst_n = '0' then
			en_reg <= '0';
			db_reg <= (others => '0');
		elsif rising_edge(clk) then
			en_reg <= en_next;
			db_reg <= db_next;
		end if;
	end process;
	
end lcd_driver_rtl;

