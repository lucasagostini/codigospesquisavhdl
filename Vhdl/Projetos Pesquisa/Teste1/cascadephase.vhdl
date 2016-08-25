LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.quRecords.all;

ENTITY cascadephase IS
	PORT(	phase_real		: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		phase_imag	: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END cascadephase;

ARCHITECTURE structural OF cascadephase IS 

-- Component Declaration
COMPONENT PHASEgate
	PORT(	phase_real		: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		phase_imag		: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END COMPONENT;

SIGNAL outqubit1 : qubit;
SIGNAL outqubit2 : qubit;
SIGNAL outqubit3 : qubit;
SIGNAL outqubit4 : qubit;
SIGNAL outqubit5 : qubit;
SIGNAL outqubit6 : qubit;
SIGNAL outqubit7 : qubit;
SIGNAL outqubit8 : qubit;
SIGNAL outqubit9 : qubit;
SIGNAL outqubit10 : qubit;
SIGNAL outqubit11 : qubit;
SIGNAL outqubit12 : qubit;
SIGNAL outqubit13 : qubit;
SIGNAL outqubit14 : qubit;
SIGNAL outqubit15 : qubit;
SIGNAL outqubit16 : qubit;
BEGIN

phase1: PHASEgate PORT MAP(phase_real, phase_imag, inQubit, outqubit1);
phase2: PHASEgate PORT MAP(phase_real, phase_imag, outqubit1, outQubit2);
phase3: PHASEgate PORT MAP(phase_real, phase_imag, outqubit2, outQubit3);
phase4: PHASEgate PORT MAP(phase_real, phase_imag, outqubit3, outQubit4);
phase5: PHASEgate PORT MAP(phase_real, phase_imag, outqubit4, outQubit5);
phase6: PHASEgate PORT MAP(phase_real, phase_imag, outqubit5, outQubit6);
phase7: PHASEgate PORT MAP(phase_real, phase_imag, outqubit6, outQubit7);
phase8: PHASEgate PORT MAP(phase_real, phase_imag, outqubit7, outQubit8);
phase9: PHASEgate PORT MAP(phase_real, phase_imag, outqubit8, outQubit9);
phase10: PHASEgate PORT MAP(phase_real, phase_imag, outqubit9, outQubit10);
phase11: PHASEgate PORT MAP(phase_real, phase_imag, outqubit10, outQubit11);
phase12: PHASEgate PORT MAP(phase_real, phase_imag, outqubit11, outQubit12);
phase13: PHASEgate PORT MAP(phase_real, phase_imag, outqubit12, outQubit13);
phase14: PHASEgate PORT MAP(phase_real, phase_imag, outqubit13, outQubit14);
phase15: PHASEgate PORT MAP(phase_real, phase_imag, outqubit14, outQubit15);
phase16: PHASEgate PORT MAP(phase_real, phase_imag, outqubit15, outQubit);
--phase17: PHASEgate PORT MAP(phase_real, phase_imag, outqubit16, outQubit);

END structural;
