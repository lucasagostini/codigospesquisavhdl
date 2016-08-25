-- quRecords.vhdl
--
-- Description: Keeps a record of complex numbers, qubits.

LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE quRecords IS
	
	CONSTANT N			: INTEGER := 8;
	CONSTANT twoN			: INTEGER := 16;
	
	TYPE complexNum IS RECORD
		real		: STD_LOGIC_VECTOR(N-1 downto 0);
		imaginary		: STD_LOGIC_VECTOR(N-1 downto 0);
	END RECORD;

	TYPE quBit IS RECORD
		alpha		: complexNum;
		beta		: complexNum;
	END RECORD;
	
	TYPE complexArray IS ARRAY (integer range <>) OF complexNum;
	
	TYPE entangledQubit IS ARRAY (integer range <>) OF complexNum;
	
	TYPE quArray IS ARRAY (integer range <>) OF quBit;
	
	TYPE result IS array (integer range <>) of std_logic_vector(twoN-1 downto 0);
END quRecords;