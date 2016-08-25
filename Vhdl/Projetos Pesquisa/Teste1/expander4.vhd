LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.QURECORDS.ALL;

ENTITY EXPANDER4 IS
PORT( 
	 input : IN quArray(3 downto 0);
	 output : OUT entangledQubit(15 downto 0)
	);
END EXPANDER4;


ARCHITECTURE EXPANDER4_behavioral OF EXPANDER4 IS 
	 COMPONENT complexMult
	 PORT( X, Y : IN complexNum;
	       outComplexMult : OUT complexNum);
	 END COMPONENT;
	 SIGNAL alpha0 : complexNum;
	 SIGNAL alpha0alpha1 : complexNum;
	 SIGNAL alpha0alpha1alpha2 : complexNum;
	 SIGNAL alpha0alpha1beta2 : complexNum;
	 SIGNAL alpha0beta1 : complexNum;
	 SIGNAL alpha0beta1alpha2 : complexNum;
	 SIGNAL alpha0beta1beta2 : complexNum;
	 SIGNAL beta0 : complexNum;
	 SIGNAL beta0alpha1 : complexNum;
	 SIGNAL beta0alpha1alpha2 : complexNum;
	 SIGNAL beta0alpha1beta2 : complexNum;
	 SIGNAL beta0beta1 : complexNum;
	 SIGNAL beta0beta1alpha2 : complexNum;
	 SIGNAL beta0beta1beta2 : complexNum;
	 BEGIN
	 alpha0 <= input(0).alpha;
	 beta0 <= input(0).beta;
		 cmult1: complexMult PORT MAP(alpha0, input(1).alpha, alpha0alpha1);
		 cmult2: complexMult PORT MAP(alpha0alpha1, input(2).alpha, alpha0alpha1alpha2);
		 cmult3: complexMult PORT MAP(alpha0alpha1alpha2, input(3).alpha, output(0));
		 cmult4: complexMult PORT MAP(alpha0alpha1alpha2, input(3).beta, output(1));
		 cmult5: complexMult PORT MAP(alpha0alpha1, input(2).beta, alpha0alpha1beta2);
		 cmult6: complexMult PORT MAP(alpha0alpha1beta2, input(3).alpha, output(2));
		 cmult7: complexMult PORT MAP(alpha0alpha1beta2, input(3).beta, output(3));
		 cmult8: complexMult PORT MAP(alpha0, input(1).beta, alpha0beta1);
		 cmult9: complexMult PORT MAP(alpha0beta1, input(2).alpha, alpha0beta1alpha2);
		 cmult10: complexMult PORT MAP(alpha0beta1alpha2, input(3).alpha, output(4));
		 cmult11: complexMult PORT MAP(alpha0beta1alpha2, input(3).beta, output(5));
		 cmult12: complexMult PORT MAP(alpha0beta1, input(2).beta, alpha0beta1beta2);
		 cmult13: complexMult PORT MAP(alpha0beta1beta2, input(3).alpha, output(6));
		 cmult14: complexMult PORT MAP(alpha0beta1beta2, input(3).beta, output(7));
		 cmult15: complexMult PORT MAP(beta0, input(1).alpha, beta0alpha1);
		 cmult16: complexMult PORT MAP(beta0alpha1, input(2).alpha, beta0alpha1alpha2);
		 cmult17: complexMult PORT MAP(beta0alpha1alpha2, input(3).alpha, output(8));
		 cmult18: complexMult PORT MAP(beta0alpha1alpha2, input(3).beta, output(9));
		 cmult19: complexMult PORT MAP(beta0alpha1, input(2).beta, beta0alpha1beta2);
		 cmult20: complexMult PORT MAP(beta0alpha1beta2, input(3).alpha, output(10));
		 cmult21: complexMult PORT MAP(beta0alpha1beta2, input(3).beta, output(11));
		 cmult22: complexMult PORT MAP(beta0, input(1).beta, beta0beta1);
		 cmult23: complexMult PORT MAP(beta0beta1, input(2).alpha, beta0beta1alpha2);
		 cmult24: complexMult PORT MAP(beta0beta1alpha2, input(3).alpha, output(12));
		 cmult25: complexMult PORT MAP(beta0beta1alpha2, input(3).beta, output(13));
		 cmult26: complexMult PORT MAP(beta0beta1, input(2).beta, beta0beta1beta2);
		 cmult27: complexMult PORT MAP(beta0beta1beta2, input(3).alpha, output(14));
		 cmult28: complexMult PORT MAP(beta0beta1beta2, input(3).beta, output(15));
END EXPANDER4_behavioral;
