-- complexMult.vhdl
--
-- Description: Multiplies two complex fixed point numbers.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
--USE ieee.std_logic_unsigned.all;				-- signed???
USE work.quRecords.all;

ENTITY complexMult IS
	PORT(	X,Y		: IN complexNum;
		outComplexMult		: OUT complexNum
	    );
END complexMult;

ARCHITECTURE myCMult OF complexMult IS

-- declarations

COMPONENT adder
	PORT(	A,B	: IN STD_LOGIC_VECTOR(N-1 downto 0);
		SUM	: OUT STD_LOGIC_VECTOR(N-1 downto 0));
END COMPONENT;

COMPONENT mult 
	PORT(	in1,in2		: IN STD_LOGIC_VECTOR(N-1 downto 0);
		outMult		: OUT STD_LOGIC_VECTOR(N-1 downto 0)
	    );
END COMPONENT;

-- signal declarations
SIGNAL XrYr,XrYi,XiYr,XiYi				: STD_LOGIC_VECTOR(N-1 downto 0);
SIGNAL negXiYi				: STD_LOGIC_VECTOR(N-1 downto 0);

BEGIN
	-- real result
	MULT1r		: mult PORT MAP(X.real,Y.real,XrYr);
	MULT2r		: mult PORT MAP(X.imaginary,Y.imaginary,XiYi);
	negXiYi(N-1) <= NOT XiYi(N-1);
	negXiYi(N-2 downto 0) <= XiYi(N-2 downto 0);
	ADD1r		: adder PORT MAP(XrYr,negXiYi,outComplexMult.real);
	
	-- imaginary result
	MULT1i		: mult PORT MAP(X.real,Y.imaginary,XrYi);
	MULT2i		: mult PORT MAP(X.imaginary,Y.real,XiYr);
	ADD1i		: adder PORT MAP(XrYi,XiYr,outComplexMult.imaginary);
	
END myCMult;
