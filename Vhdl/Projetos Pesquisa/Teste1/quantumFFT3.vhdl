LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_signed.all;
USE work.quRecords.all;


ENTITY quantumFFT3 IS
	PORT(clk : IN STD_LOGIC;
	     phase_real : IN STD_LOGIC_VECTOR(N-1 downto 0);
	     phase_imag : IN STD_LOGIC_VECTOR(N-1 downto 0);
	     root2 : IN STD_LOGIC_VECTOR(N-1 downto 0);
	     inQubit1: IN quBit;
	     inQubit2: IN quBit;
	     inQubit3: IN quBit;    	 
	     outQubit1: OUT quBit;
	     outQubit2: OUT quBit;
	     outQubit3: OUT qubit
	    );
END quantumFFT3;

ARCHITECTURE structural OF quantumFFT3 IS


COMPONENT C_Sgate
	PORT ( dataQubit : IN quBit;
	       controlQubit : IN quBit;
	       outData : OUT quBit;
	       outControl : OUT quBit
	     );
END COMPONENT;

COMPONENT C_Tgate
	PORT ( phase_real : IN STD_LOGIC_VECTOR(N-1 downto 0);
	       phase_imag : IN STD_LOGIC_VECTOR(N-1 downto 0);
	       dataQubit : IN quBit;
	       controlQubit : IN quBit;
	       outData : OUT quBit;
	       outControl : OUT quBit
	     );
END COMPONENT;

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


-- Signals
SIGNAL tqubit1_1,tqubit1_2,tqubit1_3,tqubit2_1,tqubit2_2,tqubit2_3,tqubit3_1,tqubit3_2,tqubit3_3 : quBit;
SIGNAL reg1_1, reg1_2, reg1_3, reg1_4, reg1_5 : quArray(2 downto 0);
SIGNAL reg1_1out, reg1_2out, reg1_3out, reg1_4out, reg1_5out : quArray(2 downto 0);
BEGIN

H1_1: HADAMARDgate PORT MAP(root2,inQubit1,tqubit1_1);
reg1_1(0) <= tqubit1_1;
reg1_1(1) <= inQubit2;
reg1_1(2) <= inQubit3;
REG1:	QuantumRegister  GENERIC MAP(NUM => 3)
		  PORT MAP(input => reg1_1, clock => clk, output =>reg1_1out);
S1_1: C_Sgate PORT MAP(reg1_1out(0),reg1_1out(1),tqubit1_2,tqubit2_1);
reg1_2(0) <= tqubit1_2;
reg1_2(1) <= tqubit2_1;
reg1_2(2) <= inQubit3;
REG2: 	QuantumRegister GENERIC MAP(NUM => 3)
			PORT MAP(input => reg1_2, clock => clk, output => reg1_2out);
T1_1: C_Tgate PORT MAP(phase_real,phase_imag,reg1_2out(0),reg1_2out(2),tqubit1_3,tqubit3_1);
H2_2: HADAMARDgate PORT MAP(root2,reg1_2out(1),tqubit2_2);
reg1_3(0) <= tqubit1_3;
reg1_3(1) <= tqubit2_2;
reg1_3(2) <= tqubit3_1;
REG3: 	QuantumRegister GENERIC MAP(NUM => 3)
			PORT MAP(input => reg1_3, clock => clk, output => reg1_3out);
S2_2: C_Sgate PORT MAP(reg1_3out(1),reg1_3out(2),tqubit2_3,tqubit3_2);
reg1_4(0) <= reg1_3out(0);
reg1_4(1) <= tqubit2_3;
reg1_4(2) <= tqubit3_2;
REG4: 	QuantumRegister GENERIC MAP(NUM => 3)
			PORT MAP(input => reg1_4, clock => clk, output => reg1_4out);
H3_1: HADAMARDgate PORT MAP(root2,reg1_4out(2),tqubit3_3);
reg1_5(0) <= reg1_4out(0);
reg1_5(1) <= reg1_4out(1);
reg1_5(2) <= tqubit3_3;
REG5: 	QuantumRegister GENERIC MAP(NUM => 3)
			PORT MAP(input => reg1_5, clock => clk, output => reg1_5out);
outQubit1 <= reg1_5out(0);
outQubit2 <= reg1_5out(1);
outQubit3 <= reg1_5out(2);
END structural;

