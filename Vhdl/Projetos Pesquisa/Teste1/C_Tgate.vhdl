LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_signed.all;
USE work.quRecords.all;

ENTITY C_Tgate IS
	PORT ( phase_real : IN STD_LOGIC_VECTOR(N-1 downto 0);
	       phase_imag : IN STD_LOGIC_VECTOR(N-1 downto 0);
	       dataQubit : IN quBit;
	       controlQubit : IN quBit;
	       outData : OUT quBit;
	       outControl : OUT quBit
	     );
END C_Tgate;

ARCHITECTURE mixed OF C_Tgate IS

COMPONENT PHASEgate
	PORT(	phase_real		: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		phase_imag		: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		inQubit		: IN quBit;
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

pgate1: PHASEgate PORT MAP(phase_real,phase_imag,dataQubit,tempQubit);
--control : ctrlGate PORT MAP(controlQubit,dataQubit,tempQubit);
outControl <= controlQubit;

END mixed;	


