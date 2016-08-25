LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.quRecords.all;

ENTITY testUART IS
	PORT(ramentry : IN std_logic_vector(twoN-1 downto 0);
	     start: IN std_logic;
	     clock : IN std_logic;
	     reset : IN std_logic;
	     transmit : OUT std_logic
	     );
END testUART;


ARCHITECTURE structural of testUART is
COMPONENT uart_ctrl
	GENERIC(byteslength : INTEGER;
		bytes: INTEGER;
		ramsize: INTEGER;
		ramsizelength : INTEGER);
	PORT(ramcounter : IN STD_LOGIC_VECTOR(ramsizelength-1 downto 0);
	     bitcounter : IN STD_LOGIC_VECTOR(byteslength-1 downto 0);
	     go : IN STD_LOGIC;
	     clock : IN STD_LOGIC;
	     reset : IN STD_LOGIC;
	     ramread_start : OUT STD_LOGIC;
	     done : OUT STD_LOGIC;
	     uart_start : OUT STD_LOGIC
	     );
END COMPONENT;

COMPONENT uart_transmitter
	GENERIC(bytes : INTEGER; -- round the ramentry to the nearest byte (recorded in bits) e.g. complexNum width 10 = 2*10+4 bits = 24 bits (3 bytes)
	        length : INTEGER); -- nearest power of 2 represeting the 'bytes' integer
	PORT( ramentry : IN STD_LOGIC_VECTOR(twoN-1 downto 0);
	      clock : IN STD_LOGIC;
	      reset : IN STD_LOGIC;
	      go : IN STD_LOGIC;
	      transmit : OUT STD_LOGIC;
	      totalbits_sent : BUFFER STD_LOGIC_VECTOR(length-1 downto 0)
	     );
END COMPONENT;
signal ramcounter : std_logic_vector(1 downto 0) := "00";
signal bitcounter : std_logic_vector(3 downto 0);
signal ramstart,done,uartgo : std_logic;
BEGIN
control : uart_ctrl
          GENERIC MAP(8,4,2,2)
          PORT MAP(ramcounter,bitcounter, start,clock,reset, ramstart,done,uartgo);
transmitter : uart_transmitter
	      GENERIC MAP(8,4)
	      PORT MAP(ramentry,clock,reset,uartgo, transmit,bitcounter);
END structural;
          
	     