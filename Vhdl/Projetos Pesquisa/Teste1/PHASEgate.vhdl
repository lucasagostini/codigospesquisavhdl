LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.quRecords.all;

ENTITY PHASEgate IS
	PORT(	phase_real		: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		phase_imag		: IN STD_LOGIC_VECTOR(N-1 downto 0);	
		inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END PHASEgate;

ARCHITECTURE myPHASE OF PHASEgate IS

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
SIGNAL mult1,mult2,mult3,mult4 					 : STD_LOGIC_VECTOR(N-1 downto 0);


BEGIN
	-- |0> coefficient
	--ADDreal1		: adder PORT MAP(inQubit.alpha.real, inQubit.beta.real, realAdd1);
	--ADDim1	 	: adder PORT MAP(inQubit.alpha.imaginary, inQubit.beta.imaginary, imAdd1);
	--MULTreal1		: mult PORT MAP(realAdd1, root2, outQubit.alpha.real);
	--MULTim1		: mult PORT MAP(imAdd1, root2, outQubit.alpha.imaginary);
	
	
	--negBetaReal(N-1) <= NOT inQubit.beta.real(N-1);
	--negBetaReal(N-2 downto 0) <= inQubit.beta.real(N-2 downto 0);
	--negBetaIm(N-1) <= NOT inQubit.beta.imaginary(N-1);
	--negBetaIm(N-2 downto 0) <= inQubit.beta.imaginary(N-2 downto 0);
	--ADDreal2		: adder PORT MAP(inQubit.alpha.real, negBetaReal, realAdd2);
	--ADDim2	 	: adder PORT MAP(inQubit.alpha.imaginary, negBetaIm, imAdd2);
	--MULTreal2		: mult PORT MAP(realAdd2, root2, outQubit.beta.real);
	--MULTim2		: mult PORT MAP(imAdd2, root2, outQubit.beta.imaginary);	
	
	-- |0> coefficient
	outQubit.alpha.real <= inQubit.alpha.real;
	outQubit.alpha.imaginary <= inQubit.alpha.imaginary;
	-- |1> coefficient
	--negBetaIm(N-1) <= NOT inQubit.beta.imaginary(N-1);
	--negBetaIm(N-2 downto 0) <= inQubit.beta.imaginary(N-2 downto 0);
	--negBetaIm(N-1) <= NOT inQubit.beta.imaginary(N-1);
	--negBetaIm(N-2 downto 0) <= inQubit.beta.imaginary(N-2 downto 0);
	mult_imagphase   : mult PORT MAP(inQubit.beta.imaginary, phase_imag, mult1);
	mult_realphase		 : mult PORT MAP(inQubit.beta.real, phase_real,mult2);
	mult_realimagphase : mult PORT MAP(inQubit.beta.real,phase_imag, mult3);
	mult_imagrealphase : mult PORT MAP(inQubit.beta.imaginary,phase_real,mult4);
	negBetaIm(N-1) <= NOT mult1(N-1);
	negBetaIm(N-2 downto 0) <= mult1(N-2 downto 0);
	
	ADDreal2		: adder PORT MAP(mult2, negBetaIm, outQubit.beta.real);
	ADDim2	 	: adder PORT MAP(mult3, mult4, outQubit.beta.imaginary);
	
	
	
END myPHASE;


