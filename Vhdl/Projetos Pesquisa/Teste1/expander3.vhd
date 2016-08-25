LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.QURECORDS.ALL;

ENTITY EXPANDER3 IS
PORT( 
	 input : IN quArray(2 downto 0);
	 output : OUT entangledQubit(7 downto 0)
	);
END EXPANDER3;


ARCHITECTURE EXPANDER3_behavioral OF EXPANDER3 IS 
	 COMPONENT complexMult
	 PORT( X, Y : IN complexNum;
	       outComplexMult : OUT complexNum);
	 END COMPONENT;
	 SIGNAL alpha0 : complexNum;
	 SIGNAL alpha0alpha1 : complexNum;
	 SIGNAL alpha0beta1 : complexNum;
	 SIGNAL beta0 : complexNum;
	 SIGNAL beta0alpha1 : complexNum;
	 SIGNAL beta0beta1 : complexNum;
	 BEGIN
	 alpha0 <= input(0).alpha;
	 beta0 <= input(0).beta;
		 cmult1: complexMult PORT MAP(alpha0, input(1).alpha, alpha0alpha1);
		 cmult2: complexMult PORT MAP(alpha0alpha1, input(2).alpha, output(0));
		 cmult3: complexMult PORT MAP(alpha0alpha1, input(2).beta, output(1));
		 cmult4: complexMult PORT MAP(alpha0, input(1).beta, alpha0beta1);
		 cmult5: complexMult PORT MAP(alpha0beta1, input(2).alpha, output(2));
		 cmult6: complexMult PORT MAP(alpha0beta1, input(2).beta, output(3));
		 cmult7: complexMult PORT MAP(beta0, input(1).alpha, beta0alpha1);
		 cmult8: complexMult PORT MAP(beta0alpha1, input(2).alpha, output(4));
		 cmult9: complexMult PORT MAP(beta0alpha1, input(2).beta, output(5));
		 cmult10: complexMult PORT MAP(beta0, input(1).beta, beta0beta1);
		 cmult11: complexMult PORT MAP(beta0beta1, input(2).alpha, output(6));
		 cmult12: complexMult PORT MAP(beta0beta1, input(2).beta, output(7));
END EXPANDER3_behavioral;
