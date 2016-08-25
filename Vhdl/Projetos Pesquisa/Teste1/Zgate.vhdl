-- Zgate.vhdl
--
-- Description: |v> = alpha|0> + beta|1>
--		Z|v> = beta|0> + alpha|1>

USE work.quRecords.all;

ENTITY Zgate IS
	PORT(	inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END Zgate;

ARCHITECTURE myZ OF Zgate IS
BEGIN
	PROCESS(inQubit)
	BEGIN
		outQubit.alpha <= inQubit.beta;
		outQubit.beta <= inQubit.alpha;
	END PROCESS;
END myZ;
