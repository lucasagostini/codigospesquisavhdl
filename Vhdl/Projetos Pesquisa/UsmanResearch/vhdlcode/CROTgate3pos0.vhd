LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.QURECORDS.ALL;

ENTITY CROTGATE3pos0 IS
PORT( 
	 input : IN entangledQubit(7 downto 0);
	 phase : IN complexNum;
	 output : OUT entangledQubit(7 downto 0)
	);
END CROTGATE3pos0;


ARCHITECTURE CROTGATE3_structural OF CROTGATE3pos0 IS 
	 COMPONENT complexMult
	 PORT( X, Y : IN complexNum;
	       outComplexMult : OUT complexNum);
	 END COMPONENT;
BEGIN
	 output(0) <= input(0);
	 output(1) <= input(1);
	 output(2) <= input(2);
	 output(3) <= input(3);
	 mult0 : complexMult PORT MAP(phase, input(4), output(4));
	 mult1 : complexMult PORT MAP(phase, input(5), output(5));
	 mult2 : complexMult PORT MAP(phase, input(6), output(6));
	 mult3 : complexMult PORT MAP(phase, input(7), output(7));
END CROTGATE3_structural;
