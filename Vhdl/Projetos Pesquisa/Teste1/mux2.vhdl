Library IEEE;
USE ieee.std_logic_1164.all;

ENTITY mux2 IS
	PORT(in1, in2: IN STD_LOGIC;
	     sel : IN STD_LOGIC;
	     output : OUT STD_LOGIC);
END mux2;

ARCHITECTURE behavioral OF mux2 IS
BEGIN
PROCESS(in1,in2,sel)
BEGIN
	IF (sel = '0') THEN
		output <= in1;
	ELSE
		output <= in2;
	END IF;
END PROCESS;
END behavioral;
