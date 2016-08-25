LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.QURECORDS.ALL;

ENTITY HADAMARDgate3pos1 IS
PORT( 
	 input : IN entangledQubit(7 downto 0);
	 root2 : IN STD_LOGIC_VECTOR(N-1 downto 0);
	 output : OUT entangledQubit(7 downto 0)
	);
END HADAMARDgate3pos1;


ARCHITECTURE HADAMARDgate3_structural OF HADAMARDgate3pos1 IS 
	COMPONENT adder
	 PORT(	A,B	: IN STD_LOGIC_VECTOR(N-1 downto 0);
	 SUM	: OUT STD_LOGIC_VECTOR(N-1 downto 0));
	 END COMPONENT;
	 COMPONENT mult
	 PORT(	in1,in2		: IN STD_LOGIC_VECTOR(N-1 downto 0);
	 outMult		: OUT STD_LOGIC_VECTOR(N-1 downto 0)
);
	 END COMPONENT;
	 SIGNAL mult000 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult001 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult010 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult011 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult100 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult101 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult110 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult111 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult200 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult201 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult210 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult211 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult300 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult301 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult310 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult311 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult400 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult401 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult410 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult411 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult500 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult501 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult510 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult511 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult600 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult601 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult610 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult611 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult700 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult701 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult710 : STD_LOGIC_VECTOR(N-1 downto 0);
	 SIGNAL mult711 : STD_LOGIC_VECTOR(N-1 downto 0);
SIGNAL negroot2 : STD_LOGIC_VECTOR(N-1 downto 0);
BEGIN
negroot2(N-2 downto 0) <= root2(N-2 downto 0);
negroot2(N-1) <= '1';
	 mult0 : mult PORT MAP(root2, input(0).real, mult000);
	 mult1 : mult PORT MAP(root2, input(0).imaginary, mult001);
	 mult2 : mult PORT MAP(root2, input(2).real, mult010);
	 mult3 : mult PORT MAP(root2, input(2).imaginary, mult011);
	 adder4 : adder PORT MAP(mult000, mult010, output(0).real);
	 adder5 : adder PORT MAP(mult001, mult011, output(0).imaginary);
	 mult6 : mult PORT MAP(root2, input(1).real, mult100);
	 mult7 : mult PORT MAP(root2, input(1).imaginary, mult101);
	 mult8 : mult PORT MAP(root2, input(3).real, mult110);
	 mult9 : mult PORT MAP(root2, input(3).imaginary, mult111);
	 adder10 : adder PORT MAP(mult100, mult110, output(1).real);
	 adder11 : adder PORT MAP(mult101, mult111, output(1).imaginary);
	 mult12 : mult PORT MAP(root2, input(0).real, mult200);
	 mult13 : mult PORT MAP(root2, input(0).imaginary, mult201);
	 mult14 : mult PORT MAP(negroot2, input(2).real, mult210);
	 mult15 : mult PORT MAP(negroot2, input(2).imaginary, mult211);
	 adder16 : adder PORT MAP(mult200, mult210, output(2).real);
	 adder17 : adder PORT MAP(mult201, mult211, output(2).imaginary);
	 mult18 : mult PORT MAP(root2, input(1).real, mult300);
	 mult19 : mult PORT MAP(root2, input(1).imaginary, mult301);
	 mult20 : mult PORT MAP(negroot2, input(3).real, mult310);
	 mult21 : mult PORT MAP(negroot2, input(3).imaginary, mult311);
	 adder22 : adder PORT MAP(mult300, mult310, output(3).real);
	 adder23 : adder PORT MAP(mult301, mult311, output(3).imaginary);
	 mult24 : mult PORT MAP(root2, input(4).real, mult400);
	 mult25 : mult PORT MAP(root2, input(4).imaginary, mult401);
	 mult26 : mult PORT MAP(root2, input(6).real, mult410);
	 mult27 : mult PORT MAP(root2, input(6).imaginary, mult411);
	 adder28 : adder PORT MAP(mult400, mult410, output(4).real);
	 adder29 : adder PORT MAP(mult401, mult411, output(4).imaginary);
	 mult30 : mult PORT MAP(root2, input(5).real, mult500);
	 mult31 : mult PORT MAP(root2, input(5).imaginary, mult501);
	 mult32 : mult PORT MAP(root2, input(7).real, mult510);
	 mult33 : mult PORT MAP(root2, input(7).imaginary, mult511);
	 adder34 : adder PORT MAP(mult500, mult510, output(5).real);
	 adder35 : adder PORT MAP(mult501, mult511, output(5).imaginary);
	 mult36 : mult PORT MAP(root2, input(4).real, mult600);
	 mult37 : mult PORT MAP(root2, input(4).imaginary, mult601);
	 mult38 : mult PORT MAP(negroot2, input(6).real, mult610);
	 mult39 : mult PORT MAP(negroot2, input(6).imaginary, mult611);
	 adder40 : adder PORT MAP(mult600, mult610, output(6).real);
	 adder41 : adder PORT MAP(mult601, mult611, output(6).imaginary);
	 mult42 : mult PORT MAP(root2, input(5).real, mult700);
	 mult43 : mult PORT MAP(root2, input(5).imaginary, mult701);
	 mult44 : mult PORT MAP(negroot2, input(7).real, mult710);
	 mult45 : mult PORT MAP(negroot2, input(7).imaginary, mult711);
	 adder46 : adder PORT MAP(mult700, mult710, output(7).real);
	 adder47 : adder PORT MAP(mult701, mult711, output(7).imaginary);
END HADAMARDgate3_structural;
