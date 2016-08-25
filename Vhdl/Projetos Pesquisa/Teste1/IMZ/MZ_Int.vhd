LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.quRecords.all;

entity MZ_Int is 
PORT( 	clk: in std_logic;
			input: in qubit;
			output: out qubit);
END MZ_Int;

Architecture quantum of MZ_Int is
---------------------------------------------------------------------------
COMPONENT HADAMARDgate IS
	PORT(	root2		: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END COMPONENT;		
	
COMPONENT PHASEgate IS
	PORT(	phase_real		: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		phase_imag		: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END COMPONENT;	
COMPONENT adder 
	PORT(	A,B	: IN STD_LOGIC_VECTOR(N-1 downto 0);
		SUM	: OUT STD_LOGIC_VECTOR(N-1 downto 0));
END COMPONENT;

COMPONENT mult 
	PORT(	in1,in2		: IN STD_LOGIC_VECTOR(N-1 downto 0);
		outMult		: OUT STD_LOGIC_VECTOR(N-1 downto 0)
	    );
END COMPONENT;
---------------------------------------------------------------------------
SIGNAL outqubit1,outqubit2: qubit;
SIGNAL phasereal,phaseimag,root2 : STD_LOGIC_VECTOR(N-1 downto 0);
---------------------------------------------------------------------------
BEGIN
phasereal <= "0010110101";
phaseimag <= "0010110101";
root2 <= "0010110101";
---------------------------------------------------------------------------
QC1: HADAMARDgate 
PORT MAP (root2,input,outqubit1);
QC2: PHASEgate
PORT MAP (phasereal,phaseimag,outqubit1,outqubit2);
QC3: HADAMARDgate
PORT MAP (root2,outqubit2, output);
---------------------------------------------------------------------------
END quantum;