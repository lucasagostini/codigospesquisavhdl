LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_signed.all;
USE work.quRecords.all;

ENTITY CNOT_u IS
	PORT(	controlQubit    : IN quBit;
		dataQubit 	     : IN quBit;
		controlQubitout : OUT quBit;
		dataQubitout    : OUT quBit
	    );
END CNOT_u;

ARCHITECTURE behavioral OF CNOT_u IS
BEGIN
PROCESS (controlQubit,dataQubit)
BEGIN
	IF (controlQubit.beta.real(N-2) = '1' OR controlQubit.beta.imaginary(N-2) = '1') THEN
		-- SWAP
		dataQubitout.alpha <= dataQubit.beta;
		dataQubitout.beta <= dataQubit.alpha;
	ELSE
		dataQubitout <= dataQubit;
	END IF;
	controlQubitout <= controlQubit;
END PROCESS;
END behavioral;
	 

