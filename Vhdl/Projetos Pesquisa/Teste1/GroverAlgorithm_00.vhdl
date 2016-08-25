LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_signed.all;
USE work.quRecords.all;


ENTITY GroverAlgorithm_00 IS
	PORT(clk : IN STD_LOGIC;
	     root2 : IN STD_LOGIC_VECTOR(N-1 downto 0);
	     inQubit1: IN quBit;
	     inQubit2: IN quBit;
	     inQubit3: IN quBit;    	 
	     outQubit1: OUT quBit;
	     outQubit2: OUT quBit;
	     outQubit3: OUT qubit
	    );
END GroverAlgorithm_00;

ARCHITECTURE structural OF GroverAlgorithm_00 IS

COMPONENT HADAMARDgate
	PORT(	root2		: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END COMPONENT;

COMPONENT QuantumRegister
	GENERIC( NUM: INTEGER -- number i/o qubits
		);
	PORT(input : in quArray(NUM-1 downto 0);
	     clock : in  STD_LOGIC;
   	     output : out quArray(NUM-1 downto 0)
   	     );
END COMPONENT;

COMPONENT CNOT_u
	PORT(	controlQubit    : IN quBit;
		dataQubit 	     : IN quBit;
		controlQubitout : OUT quBit;
		dataQubitout    : OUT quBit
	    );
END COMPONENT;

COMPONENT Xgate
	PORT(	inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END COMPONENT;


COMPONENT GroverOracle_00
	PORT(inQubit1: IN quBit;
	     inQubit2: IN quBit;
	     inQubit3: IN quBit;    	 
	     outQubit1: OUT quBit;
	     outQubit2: OUT quBit;
	     outQubit3: OUT qubit
	    );
END COMPONENT;
 
SIGNAL q1_1,q1_2,q1_3,q1_4,q1_5,q1_6,q1_7: quBit;
SIGNAL q2_1,q2_2,q2_3,q2_4,q2_5,q2_6,q2_7: quBit;
SIGNAL q3_1,q3_2,q3_3,q3_4: quBit;
SIGNAL reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8,reg9 : quArray(2 downto 0);
SIGNAL reg1out,reg2out,reg3out,reg4out,reg5out,reg6out,reg7out,reg8out,reg9out : quArray(2 downto 0);

BEGIN
H1_1: HadamardGate PORT MAP(root2,inQubit1,q1_1);
H2_1: HadamardGate PORT MAP(root2,inQubit2,q2_1);
H3_1: HadamardGate PORT MAP(root2,inQubit3,q3_1);
reg1(0) <= q1_1; reg1(1) <= q2_1; reg1(2) <= q3_1;
R1:	QuantumRegister  GENERIC MAP(NUM => 3)
		  PORT MAP(input => reg1, clock => clk, output =>reg1out);
Oracle: GroverOracle_00 PORT MAP(reg1out(0),reg1out(1),reg1out(2),q1_2,q2_2,q3_2);
reg2(0) <= q1_2; reg2(1) <= q2_2; reg2(2) <= q3_2;
R2:	QuantumRegister  GENERIC MAP(NUM => 3)
		  PORT MAP(input => reg2, clock => clk, output =>reg2out);
H1_3: HadamardGate PORT MAP(root2,reg2out(0),q1_3);
H2_3: HadamardGate PORT MAP(root2,reg2out(1),q2_3);
reg3(0) <= q1_3; reg3(1) <= q2_3; reg3(2) <= reg2out(2);
R3:	QuantumRegister  GENERIC MAP(NUM => 3)
		  PORT MAP(input => reg3, clock => clk, output =>reg3out);
X1_4: Xgate PORT MAP(reg3out(0),q1_4);
X2_4: Xgate PORT MAP(reg3out(1),q2_4);
H2_5: HadamardGate PORT MAP(root2,q2_4,q2_5);
reg4(0) <= q1_4; reg4(1) <= q2_4; reg4(2) <= reg3out(2);
R4:	QuantumRegister  GENERIC MAP(NUM => 3)
		  PORT MAP(input => reg4, clock => clk, output =>reg4out);
H2_6: HadamardGate PORT MAP(root2,reg4out(1),q2_6);
X1_5: Xgate PORT MAP(reg4out(0),q1_5);
X2_7: Xgate PORT MAP(q2_6,q2_7);
reg5(0) <= q1_5; reg5(1) <= q2_7; reg5(2) <= reg4out(2);
R5:	QuantumRegister  GENERIC MAP(NUM => 3)
		  PORT MAP(input => reg5, clock => clk, output =>reg5out);
  
H1_6: HadamardGate PORT MAP(root2,reg5out(0),outQubit1);
H2_8: HadamardGate PORT MAP(root2,reg5out(1),outQubit2);
H3_3: HadamardGate PORT MAP(root2,reg5out(2),outQubit3);

END structural;
	    
	    

