-- complexNum.vhdl
--
-- Programmer:   Karthik S., Nicholas Z.
--
-- Description:  Stores a complex number in a record.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;

ENTITY complexNum IS
	GENERIC(N		: POSITIVE);
	PORT(	inReal, inIm		: IN STD_LOGIC_VECTOR(N-1 downto 0);
		real, imaginary	:	OUT STD_LOGIC_VECTOR
	    );
END complexNum;

ARCHITECTURE myComplex OF complexNum IS
BEGIN
	PROCESS(inReal,inIm)
	BEGIN
		real <= inReal;
		imaginary <= inIm;
	END PROCESS;
END myComplex;
			
