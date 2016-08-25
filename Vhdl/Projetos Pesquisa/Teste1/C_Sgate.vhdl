LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_signed.all;
USE work.quRecords.all;

ENTITY C_Sgate IS
	PORT ( dataQubit : IN quBit;
	       controlQubit : IN quBit;
	       outData : OUT quBit;
	       outControl : OUT quBit
	     );
END C_Sgate;

ARCHITECTURE mixed OF C_Sgate IS

COMPONENT Sgate
	PORT(	inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END COMPONENT;

SIGNAL tempQubit : quBit;
BEGIN
PROCESS(tempQubit)
BEGIN
	IF (controlQubit.beta.real(N-2) = '1' OR controlQubit.beta.imaginary(N-2) = '1') THEN
		outData <= tempQubit;
	ELSE
		outData <= dataQubit;
	END IF;
END PROCESS;

sgate1: Sgate PORT MAP(dataQubit,tempQubit);
--control : ctrlGate PORT MAP(controlQubit,dataQubit,tempQubit);
outControl <= controlQubit;

END mixed;	
