LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;
USE work.quRecords.all;

ENTITY RAM_reader IS
	GENERIC( ramsize : INTEGER;
	        length : INTEGER);
	PORT(	busy : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		clock : IN STD_LOGIC;
		ram_out : IN STD_LOGIC_VECTOR(twoN-1 downto 0);
		toUART : OUT STD_LOGIC_VECTOR(twoN-1 downto 0);
		done : OUT STD_LOGIC;
		address : BUFFER STD_LOGIC_VECTOR(length-1 downto 0)
	     );
END RAM_reader;

ARCHITECTURE behavioral OF RAM_reader IS
BEGIN
PROCESS(clock,busy,reset,ram_out)
variable tempaddress : std_logic_vector(length-1 downto 0);
BEGIN
IF(reset = '1') THEN
	address <= (OTHERS => '0');
	toUART <= (OTHERS => '1');
ELSIF(clock'event and clock = '1') THEN
	IF (CONV_INTEGER(address) <= ramsize-1) THEN
		IF (busy = '0') THEN
			toUART <= ram_out;
			tempaddress := address;
			tempaddress := tempaddress + 1;
			address <= tempaddress;
		END IF;
	END IF;
END IF;
END PROCESS;

PROCESS(address)
BEGIN
IF (CONV_INTEGER(address) <= ramsize-1) THEN
	done <= '1';
ELSE
	done <= '0';
END IF;
END PROCESS;
END behavioral;
	
		
     