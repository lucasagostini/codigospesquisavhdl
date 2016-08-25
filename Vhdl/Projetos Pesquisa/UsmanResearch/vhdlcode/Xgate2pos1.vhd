LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.QURECORDS.ALL;

ENTITY XGATE2pos1 IS
PORT( 
	 input : IN entangledQubit(3 downto 0);
	 output : OUT entangledQubit(3 downto 0)
	);
END XGATE2pos1;


ARCHITECTURE XGATE2_structural OF XGATE2pos1 IS 
BEGIN
	 output(1) <= input(0);
	 output(0) <= input(1);
	 output(3) <= input(2);
	 output(2) <= input(3);
END XGATE2_structural;
