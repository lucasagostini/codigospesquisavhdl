-- quReg.vhdl
--
-- Description: Paramatrizable module for a quantum register

USE work.quRecords.all;

ENTITY quReg IS
	GENERIC(entangled			: INTEGER := 2);
	PORT(	inQubits		: IN quArray (entangled-1 downto 0);
		outQubits		: OUT quArray (entangled-1 downto 0)
	    );
END quReg;

ARCHITECTURE myReg OF quReg IS
BEGIN
	PROCESS(inQubits)
	BEGIN
		outQubits <= inQubits;
	END PROCESS;
END myReg;