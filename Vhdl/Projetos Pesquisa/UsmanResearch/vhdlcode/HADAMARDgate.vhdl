-- HADAMARDgate.vhdl
--
-- Description: H|v> = (1/(2^(1/2)))((alpha + beta)|0> + (alpha + beta)|1>) 

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.quRecords.all;

ENTITY HADAMARDgate IS
	PORT(	root2		: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END HADAMARDgate;

ARCHITECTURE myH OF HADAMARDgate IS

-- component declarations
COMPONENT adder 
	PORT(	A,B	: IN STD_LOGIC_VECTOR(N-1 downto 0);
		SUM	: OUT STD_LOGIC_VECTOR(N-1 downto 0));
END COMPONENT;

COMPONENT mult 
	PORT(	in1,in2		: IN STD_LOGIC_VECTOR(N-1 downto 0);
		outMult		: OUT STD_LOGIC_VECTOR(N-1 downto 0)
	    );
END COMPONENT;

SIGNAL realAdd1,realAdd2,imAdd1,imAdd2			: STD_LOGIC_VECTOR(N-1 downto 0);
SIGNAL negBetaReal,negBetaIm					 : STD_LOGIC_VECTOR(N-1 downto 0);
SIGNAL alphareal,alphaimag,betareal,betaimag : STD_LOGIC_VECTOR(N-1 downto 0);
--SIGNAL temp : STD_LOGIC_VECTOR(N-1 downto 0);
BEGIN 

	multalphareal : mult PORT MAP(inQubit.alpha.real, root2, alphareal);
	multalphaimag : mult PORT MAP(inQubit.alpha.imaginary,root2, alphaimag);
	multbetareal : mult PORT MAP(inQubit.beta.real, root2, betareal);
	multbetaimag : mult PORT MAP(inQubit.beta.imaginary,root2,betaimag);
	
	
	-- |0> coefficient
	ADDreal1		: adder PORT MAP(alphareal, betareal, outQubit.alpha.real);
	--ADDreal1 : adder PORT MAP(alphareal,betareal,temp);
	ADDim1	 	: adder PORT MAP(alphaimag,betaimag,outQubit.alpha.imaginary);

	-- |1> coefficient
	negBetaReal(N-1) <= NOT betareal(N-1);
	negBetaReal(N-2 downto 0) <= betareal(N-2 downto 0);
	negBetaIm(N-1) <= NOT betaimag(N-1);
	negBetaIm(N-2 downto 0) <= betaimag(N-2 downto 0);
	ADDreal2		: adder PORT MAP(alphareal, negBetaReal, outQubit.beta.real);
	ADDim2	 	: adder PORT MAP(alphaimag, negBetaIm, outQubit.beta.imaginary);
	
	
END myH;

