LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.QURECORDS.ALL;

ENTITY CNOTGATE3pos1 IS
PORT( 
	 input : IN entangledQubit(7 downto 0);
	 output : OUT entangledQubit(7 downto 0)
	);
END CNOTGATE3pos1;


ARCHITECTURE CNOTGATE3_structural OF CNOTGATE3pos1 IS 
BEGIN
	 output(0) <= input(0);
	 output(1) <= input(1);
	 output(3) <= input(2);
	 output(2) <= input(3);
	 output(4) <= input(4);
	 output(5) <= input(5);
	 output(7) <= input(6);
	 output(6) <= input(7);
END CNOTGATE3_structural;
