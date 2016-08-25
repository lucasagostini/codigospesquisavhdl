-- HADAMARDgate.vhdl
--
-- Description: H|v> = (1/(2^(1/2)))((alpha + beta)|0> + (alpha + beta)|1>) 

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.quRecords.all;

ENTITY Sgate IS
	PORT(	inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END Sgate;

ARCHITECTURE myS OF Sgate IS

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
--SIGNAL negBetaReal,negBetaIm					 : STD_LOGIC_VECTOR(N-1 downto 0);
SIGNAL beta_outReal, beta_outIm 					 : STD_LOGIC_VECTOR(N-1 downto 0);


BEGIN
	-- |0> coefficient
	--ADDreal1		: adder PORT MAP(inQubit.alpha.real, inQubit.beta.real, realAdd1);
	--ADDim1	 	: adder PORT MAP(inQubit.alpha.imaginary, inQubit.beta.imaginary, imAdd1);
	--MULTreal1		: mult PORT MAP(realAdd1, root2, outQubit.alpha.real);
	--MULTim1		: mult PORT MAP(imAdd1, root2, outQubit.alpha.imaginary);
	
	beta_outIm(N-1) <= Not inQubit.beta.imaginary(N-1);
	beta_outIm(N-2 downto 0) <= inQubit.beta.imaginary(N-2 downto 0);
	-- |1> coefficient
	--negBetaReal(N-1) <= NOT inQubit.beta.real(N-1);
	--negBetaReal(N-2 downto 0) <= inQubit.beta.real(N-2 downto 0);
	--negBetaIm(N-1) <= NOT inQubit.beta.imaginary(N-1);
	--negBetaIm(N-2 downto 0) <= inQubit.beta.imaginary(N-2 downto 0);
	--ADDreal2		: adder PORT MAP(inQubit.alpha.real, negBetaReal, realAdd2);
	--ADDim2	 	: adder PORT MAP(inQubit.alpha.imaginary, negBetaIm, imAdd2);
	--MULTreal2		: mult PORT MAP(realAdd2, root2, outQubit.beta.real);
	--MULTim2		: mult PORT MAP(imAdd2, root2, outQubit.beta.imaginary);	
	outQubit.alpha.real <= inQubit.alpha.real;
	outQubit.alpha.imaginary <= inQubit.alpha.imaginary;
	outQubit.beta.real <= beta_outIm;
	outQubit.beta.imaginary <= inQubit.beta.real;
	
END myS;
