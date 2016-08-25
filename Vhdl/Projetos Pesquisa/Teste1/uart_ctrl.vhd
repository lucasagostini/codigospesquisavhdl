LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;
USE work.quRecords.all;

ENTITY uart_ctrl IS
	GENERIC(bytes: INTEGER;
		byteslength : INTEGER;
		ramsize: INTEGER;
		ramsizelength : INTEGER);
	PORT(ramcounter : BUFFER STD_LOGIC_VECTOR(ramsizelength-1 downto 0);
	     bitcounter : IN STD_LOGIC_VECTOR(byteslength-1 downto 0);
	     go : IN STD_LOGIC;
	     clock : IN STD_LOGIC;
	     reset : IN STD_LOGIC;
	     ramentry : IN STD_LOGIC_VECTOR(twoN-1 downto 0);
	     --ramread_start : OUT STD_LOGIC;
	     toUART : OUT STD_LOGIC_VECTOR(twoN-1 downto 0);
	     done : OUT STD_LOGIC;
	     uart_start : OUT STD_LOGIC
	     );
END uart_ctrl;

ARCHITECTURE behavioral OF uart_ctrl IS
TYPE state_type IS (A,B,C,D);
signal state : state_type;
BEGIN
PROCESS(ramcounter,bitcounter,clock,reset,go,ramentry)
variable bitcount : INTEGER;
variable ramcount : INTEGER;
variable tempcounter : STD_LOGIC_VECTOR(ramsizelength-1 downto 0);
BEGIN
IF (reset = '1') THEN
	uart_start <= '0';
	ramcounter <= (OTHERS => '0');
	tempcounter := (OTHERS => '0');
	toUART <= ramentry;
	state <= A; 
	done <= '0';
ELSIF (clock'event and clock = '1') THEN
	bitcount := CONV_INTEGER(bitcounter);
	ramcount := CONV_INTEGER(ramcounter);
	CASE state IS
	WHEN A=>	
		IF (go = '1') THEN
			state <= B;
			uart_start <= '0';
			tempcounter := ramcounter;
			tempcounter := tempcounter + 1;
			ramcounter <= tempcounter;
			--toUART <= ramentry;
		ELSE
			state <= A;
			ramcounter <= (OTHERS => '0');
			uart_start <= '0';
		END IF;
		done <= '0';
	WHEN B=>
		toUART <= ramentry;
		IF (bitcount < bytes) THEN
			state <= B;
		ELSE
			state <= C;
		END IF;
		uart_start <= '1';
		done <= '0';
	WHEN C=>
		IF (ramcount <= ramsize-1) THEN -- fixme
			state <= A; 	
		ELSE
			state <= D;
		END IF;
		uart_start <= '0';
		done <= '0';
	WHEN D=>
		done <= '1';
		uart_start <= '0';
	END CASE;
END IF;
END PROCESS;
END behavioral;