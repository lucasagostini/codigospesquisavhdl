LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_signed.all;
USE work.quRecords.all;


ENTITY GroverOracle_00 IS
	PORT(inQubit1: IN quBit;
	     inQubit2: IN quBit;
	     inQubit3: IN quBit;    	 
	     outQubit1: OUT quBit;
	     outQubit2: OUT quBit;
	     outQubit3: OUT qubit
	    );
END GroverOracle_00;

ARCHITECTURE structural OF GroverOracle_00 IS
BEGIN
outQubit1 <= inQubit1;
outQubit2 <= inQubit2;
outQubit3.alpha <= inQubit3.beta;
outQubit3.beta <= inQubit3.alpha;
END structural;