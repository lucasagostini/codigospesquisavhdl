LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;				
USE work.quRecords.all;

ENTITY Normalizer IS
	PORT (inQubit : IN quBit;
	      outQubit : OUT quBit
	      );
END Normalizer;

ARCHITECTURE behavioral OF Normalizer IS

FUNCTION multNumbers(in1,in2	: STD_LOGIC_VECTOR)
	RETURN STD_LOGIC_VECTOR IS
	
	VARIABLE temp			: STD_LOGIC_VECTOR(twoN-5 downto 0);
	VARIABLE roundtemp 			: STD_LOGIC_VECTOR(N-2 downto 0);
	VARIABLE output 			: STD_LOGIC_VECTOR(N-3 downto 0);
	VARIABLE r 			: STD_LOGIC;
	VARIABLE outMult			: STD_LOGIC_VECTOR(N-1 downto 0);
BEGIN
		-- Determine sign bit
		IF in1(N-1) = '1' AND in2(N-1)='1' THEN						-- both negative -> positive
			outMult(N-1) := '0';
		ELSIF in1(N-1) = '0' AND in2(N-1) = '0' THEN				-- both positive -> positive
			outMult(N-1) := '0';
		ELSE						-- one negative -> negative
			outMult(N-1) := '1';
		END IF;
		IF (in1(N-2) = '1' OR in2(N-2) = '1') THEN
			outMult(N-2 downto 0) := in2(N-2 downto 0);
		ELSE		
			-- determine mantissa
			outMult(N-2) := '0';
--			temp := in1(N-3 downto 0)*in2(n2(N-2) = '1') THEN
--			                                       outMult(N-2 downto 0) := in2(N-2 downto 0);
	--	                                       ELSE		
--ARRUMAR		--	                                       -- determine mantissa
			--                                       outMult(N-2) := '0';
			  --                                     temp := in1(N-3 downto 0)*in2(N-3 downto 0);
			    --                                   -- ROUND TO NEAREST
			      --                                 roundtemp := temp(twoN-5 downto N-3);
				     --                                  N-3 downto 0);
			-- ROUND TO NEAREST
			roundtemp := temp(twoN-5 downto N-3);
				
			output := temp(twoN-5 downto N-2);

			IF (roundtemp(N-3) = '1') THEN
				output := output + 1;
			END IF; 
			outMult(N-3 downto 0) := output;
		END IF;
		
		RETURN outMult;
END multNumbers;

FUNCTION addNumbers(A,B	: STD_LOGIC_VECTOR)
	RETURN STD_LOGIC_VECTOR IS
	
	VARIABLE temp 		: STD_LOGIC_VECTOR (N-2 downto 0);
	VARIABLE zeros 	: STD_LOGIC_VECTOR(N-2 downto 0);
	VARIABLE temp4 	: STD_LOGIC_VECTOR (N-3 downto 0);
	VARIABLE temp2 	: STD_LOGIC_VECTOR(N-3 downto 0);
	VARIABLE sum		: STD_LOGIC_VECTOR(N-1 downto 0);

BEGIN
		zeros := (OTHERS => '0');
		IF (A(N-2) = '1' AND B(N-2) = '1') THEN
			IF (A(N-1) /= B(N-1)) THEN
				SUM(N-1 downto N-2) := "00";
				SUM(N-3 downto 0) := A(N-3 downto 0);
			-- ***
			ELSE 
				SUM(N-1) := A(N-1);
				SUM(N-2) := '0';
				SUM(N-3 downto 0) := A(N-3 downto 0) + B(N-3 downto 0); 			
			END IF;
		ELSIF(A(N-2) = '1' OR B(N-2) = '1') THEN
			IF (A(N-1) /= B(N-1)) THEN
				IF (A(N-2) = '1') THEN
					SUM(N-1) := A(N-1);
					SUM(N-2) := '0';
					temp(N-2 downto 0) := A(N-2 downto 0) - B(N-2 downto 0);
					SUM(N-2 downto 0) := temp(N-2 downto 0);

				ELSE
					SUM(N-1) := B(N-1);
					SUM(N-2) := '0';
					temp(N-2 downto 0) := B(N-2 downto 0) - A(N-2 downto 0);
					SUM(N-2 downto 0) := temp(N-2 downto 0);
				END IF;
			ELSE
				IF (A(N-2) = '1') THEN
					SUM(N-1 downto 0) := A(N-1 downto 0);
				ELSE
					SUM(N-1 downto 0) := B(N-1 downto 0);
				END IF;
			END IF;
		ELSIF (A(N-2 downto 0) = zeros) THEN
			SUM(N-1 downto 0) := B(N-1 downto 0);
		ELSIF(B(N-2 downto 0) = zeros) THEN
			SUM(N-1 downto 0) := A(N-1 downto 0);
		ELSE
			temp2 := (OTHERS => '0');
			temp := (OTHERS => '0');
			IF (A(N-3 downto 0) = temp2 AND B(N-3 downto 0) = temp2) THEN
				SUM(N-1) := '0';
				SUM(N-2) := '0';
				SUM(N-3 downto 0) := A(N-3 downto 0);
			--ELSIF (A(N-3 downto 0) = tem2) THEN
				--SUM(N-1 downto 0) <= B(N-1 downto 0);
			--ELSIF (B(N-3 downto 0) = temp2) THEN
				--SUM(N-1 downto 0) <= A(N-1 downto 0);
			-- A > B case
			ELSIF (A(N-3 downto 0) > B(N-3 downto 0)) THEN
				SUM(N-1) := A(N-1);
			-- A = B case
			ELSIF (A(N-3 downto 0) = B(N-3 downto 0)) THEN
				IF (A(N-1) = B(N-1)) THEN
					SUM(N-1) := A(N-1);
				ELSE
					SUM(N-1) := '0';
				END IF;
			-- A < B
			ELSE
				SUM(N-1) := B(N-1);
			END IF;
		
			-- add the mantissas
			IF (A(N-1) /= B(N-1)) THEN
				-- A > B case
				IF (A(N-3 downto 0) > B(N-3 downto 0)) THEN
					temp := A(N-2 downto 0) - B(N-2 downto 0);
					temp4 := A(N-3 downto 0) - B(N-3 downto 0);
				-- A < B
				ELSE
					temp4 := B(N-3 downto 0) - A(N-3 downto 0);
					temp := B(N-2 downto 0) - A(N-2 downto 0);
				END IF;
			ELSE
				SUM(N-1) := A(N-1);
				temp4(N-3 downto 0) := A(N-3 downto 0) + B(N-3 downto 0);
				temp := A(N-2 downto 0) + B(N-2 downto 0);
			END IF;
			IF (temp(N-2) = '0') THEN
				SUM(N-2) := '0';
				SUM(N-3 downto 0) := temp4(N-3 downto 0);
			ELSE
				SUM(N-2) := '0';
				SUM(N-3 downto 0) := temp(N-2 downto 1);
			END IF;
		END IF;		
		RETURN SUM;	
END addNumbers;

BEGIN

PROCESS(inQubit)

VARIABLE alphasq1,alphasq2,alphasq3,betasq1,betasq2,betasq3 : STD_LOGIC_VECTOR(N-1 downto 0);
VARIABLE add_alphasq1, add_alphasq2, add_betasq1,add_betasq2 : STD_LOGIC_VECTOR(N-1 downto 0);
VARIABLE negAlpha,negBeta : STD_LOGIC_VECTOR(N-1 downto 0);
VARIABLE output1,output2,output3,output4 : STD_LOGIC_VECTOR(N-1 downto 0);
BEGIN
	IF (inQubit.alpha.real(N-2) = '1' OR inQubit.alpha.imaginary(N-2) = '1') THEN
		outQubit <= inQubit;
	ELSIF (inQubit.beta.real(N-2) = '1' OR inQubit.beta.imaginary(N-2) = '1') THEN
		outQubit <= inQubit;
	ELSE
		alphasq1 := multNumbers(inQubit.alpha.real,inQubit.alpha.real);
		alphasq2 := multNumbers(inQubit.alpha.imaginary,inQubit.alpha.imaginary);
		alphasq3 := addNumbers(alphasq1,alphasq3);
		betasq1 := multNumbers(inQubit.beta.real,inQubit.beta.real);
		betasq2 := multNumbers(inQubit.beta.imaginary,inQubit.beta.imaginary);
		betasq3 := addNumbers(betasq1,betasq3);
		output1(N-1 downto N-2) := inQubit.alpha.real(N-1 downto N-2);
		--output1(N-3 downto 0) := inQubit.alpha.real(N-3 downto 0) / alphasq3(N-3 downto 0);
		
	END IF;
END PROCESS;
END behavioral;
