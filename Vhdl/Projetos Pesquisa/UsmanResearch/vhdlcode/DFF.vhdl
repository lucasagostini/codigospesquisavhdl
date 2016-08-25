LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.quRecords.all;

ENTITY DFF IS
	PORT (clock : IN STD_LOGIC;
	      input : IN STD_LOGIC;
	      output : OUT STD_LOGIC
	      );
END DFF;

ARCHITECTURE behavioral OF DFF IS
BEGIN
PROCESS(input,clock)
BEGIN
IF (clock = '1' AND clock'event) THEN
	output <= input;
END IF;
END PROCESS;
END behavioral;
