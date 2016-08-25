LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.QURECORDS.ALL;

ENTITY EXPANDER_MERGE4 IS
PORT( 
	 input1 : IN qubit;
	 input2 : IN entangledQubit(3 downto 0);
	 output : OUT entangledQubit(7 downto 0)
	);
END EXPANDER_MERGE4;


ARCHITECTURE EXPANDER_MERGE4_behavioral OF EXPANDER_MERGE4 IS 
	 COMPONENT complexMult
	 PORT( X, Y : IN complexNum;
	       outComplexMult : OUT complexNum);
	 END COMPONENT;
	 BEGIN
	 cmult1 : complexMult PORT MAP(input2(0), input1.alpha, output(0));
	 cmult2 : complexMult PORT MAP(input2(0), input1.beta, output(1));
	 cmult3 : complexMult PORT MAP(input2(1), input1.alpha, output(2));
	 cmult4 : complexMult PORT MAP(input2(1), input1.beta, output(3));
	 cmult5 : complexMult PORT MAP(input2(2), input1.alpha, output(4));
	 cmult6 : complexMult PORT MAP(input2(2), input1.beta, output(5));
	 cmult7 : complexMult PORT MAP(input2(3), input1.alpha, output(6));
	 cmult8 : complexMult PORT MAP(input2(3), input1.beta, output(7));
END EXPANDER_MERGE4_behavioral;
