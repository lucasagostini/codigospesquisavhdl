-- Xgate.vhdl
--
-- Description: |v> = alpha|0> + beta|1>
--		X|v> = alpha|0> - beta|1>

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.quRecords.all;

ENTITY Xgate IS
	PORT(	inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END Xgate;

ARCHITECTURE myX OF Xgate IS

BEGIN
	PROCESS(inQubit)
	BEGIN
		outQubit.alpha <= inQubit.alpha;
		outQubit.beta.real(N-2 downto 0) <= inQubit.beta.real(N-2 downto 0);
		outQubit.beta.real(N-1) <= NOT inQubit.beta.real(N-1);
		outQubit.beta.imaginary(N-2 downto 0) <= inQubit.beta.imaginary(N-2 downto 0);
		outQubit.beta.imaginary(N-1) <= NOT inQubit.beta.imaginary(N-1);
	END PROCESS;
END myX;
