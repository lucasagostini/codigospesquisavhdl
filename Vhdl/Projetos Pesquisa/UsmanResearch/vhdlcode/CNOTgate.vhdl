-- CNOTgate.vhdl
--
-- Description: Paramatrizable CNOT gate

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;				
USE work.quRecords.all;

ENTITY CNOTgate IS
	GENERIC(numQubits			: INTEGER;
			two2numQ		: INTEGER
	       );
	PORT(	inQubits		: IN quArray(numQubits-1 downto 0);
			outQubits		: OUT entangledQubit(two2numQ-1 downto 0)
	    );
END CNOTgate;

ARCHITECTURE myCNOT OF CNOTgate IS

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
			temp := in1(N-3 downto 0)*in2(N-3 downto 0);
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
	PROCESS(inQubits)
	
	-- index variables
	--VARIABLE i 					: INTEGER RANGE 0 to two2numQ := 0;
	--VARIABLE j 					: INTEGER RANGE 0 to numQubits := 0;
	--VARIABLE counter					: STD_LOGIC_VECTOR(numQubits-1 to 0);
	VARIABLE counter					: STD_LOGIC_VECTOR(numQubits-1 downto 0);
	
	VARIABLE	coeff1,coeff2,coeff3,coeff4				: STD_LOGIC_VECTOR(N-1 downto 0);
	
	-- complex multiplication variables
	VARIABLE temp_real1,temp_real2					: STD_LOGIC_VECTOR(N-1 downto 0);
	VARIABLE temp_im1,temp_im2					: STD_LOGIC_VECTOR(N-1 downto 0);
	VARIABLE multtemp 					: complexNum;
	
	-- multiplication variables
	VARIABLE temp					: STD_LOGIC_VECTOR(twoN-5 downto 0);
	VARIABLE roundtemp 					: STD_LOGIC_VECTOR(N-2 downto 0);
	VARIABLE output 					: STD_LOGIC_VECTOR(N-3 downto 0);
	VARIABLE r 					: STD_LOGIC;
	
	-- addition variables
	VARIABLE SUM_real,SUM_im					: STD_LOGIC_VECTOR(N-1 downto 0);
	VARIABLE notTemp_real2					: STD_LOGIC_VECTOR(N-1 downto 0);
	VARIABLE temp2 					: STD_LOGIC_VECTOR (N-2 downto 0);
	VARIABLE temp3 					: STD_LOGIC_VECTOR(N-3 downto 0);
	
	-- CNOT variables
	VARIABLE swap					: complexNum;

	BEGIN
		--counter(numQubits-1 downto 0) := (OTHERS => '0');
		FOR i IN 0 TO two2numQ-1 LOOP 
			-- initialize multtemp coeff to one = 1.00
			--multtemp.real(N-3 downto 0) := (OTHERS => '0');							-- need to load these before...2 more mults?
			--multtemp.real(N-1 downto N-2) := "01";
			multtemp.real := ((N-1) => '0',(N-2) => '1',OTHERS => '0');							-- need to load these before...2 more mults?
			multtemp.real(N-1 downto N-2) := "01";
			multtemp.imaginary(N-1 downto 0) := (OTHERS => '0');						
			--multtemp.imaginary(N-1 downto N-2) := "01";
			counter := CONV_STD_LOGIC_VECTOR(i,numQubits);
			FOR j IN 0 TO numQubits-1 LOOP
			--WHILE j <= numQubits-1 LOOP 
				--************************************************************************************
				-- complex multiply alpha: "multtemp(N-1 downto 0) <= multtemp * inQubits(j).alpha;"
				--************************************************************************************
				IF (counter(j) = '0') THEN				
					--======================================================
					-- 1.1) temp_real1 = XrYr
					--======================================================	
					coeff1 := inQubits(j).alpha.real;
					
					temp_real1 := multNumbers(multtemp.real,inQubits(j).alpha.real); 
					
					--======================================================
					-- 1.2) temp_real2 = XiYi
					--======================================================
					coeff2 := inQubits(j).alpha.imaginary;	
	
					temp_real2 := multNumbers(multtemp.real,inQubits(j).alpha.imaginary);
					--=========================================
					-- 1.3) add_real = temp_real1 - temp_real2			
					--=========================================
					-- negate for subtraction					
					notTemp_real2(N-2 downto 0) := temp_real2(N-2 downto 0);
					notTemp_real2(N-1) := NOT temp_real2(N-1);
					
					SUM_real := addNumbers(temp_real1,notTemp_real2);
					
					--======================================================
					-- 1.4) temp_im1 = XiYr
					--======================================================
					coeff3 := inQubits(j).alpha.real;
					
					temp_im1 := multNumbers(multtemp.imaginary,inQubits(j).alpha.real);
						
					--======================================================
					-- 1.5) temp_im2 = XrYi
					--======================================================
					coeff4 := inQubits(j).alpha.imaginary;
					
					temp_im2 := multNumbers(multtemp.real,inQubits(j).alpha.imaginary);
						
					--=========================================
					-- 1.6) add_im = temp_im1 + temp_im2			
					--=========================================
					SUM_im := addNumbers(temp_im1,temp_im2);
									
					multtemp.real := SUM_real;
					multtemp.imaginary := SUM_im;
					
				--**********************************************************************************	
				-- complex multiply beta: "multtemp(N-1 downto 0) <= multtemp * inQubits(j).beta;"	
				--**********************************************************************************
				ELSE
					--======================================================
					-- 2.1) temp_real1 = XrYr
					--======================================================	
					coeff1 := inQubits(j).beta.real;
					
					temp_real1 := multNumbers(multtemp.real,inQubits(j).beta.real); 
					
					--======================================================
					-- 2.2) temp_real2 = XiYi
					--======================================================
					coeff2 := inQubits(j).beta.imaginary;	
	
					temp_real2 := multNumbers(multtemp.real,inQubits(j).beta.imaginary);
					--=========================================
					-- 2.3) add_real = temp_real1 - temp_real2			
					--=========================================
					-- negate for subtraction					
					notTemp_real2(N-2 downto 0) := temp_real2(N-2 downto 0);
					notTemp_real2(N-1) := NOT temp_real2(N-1);
					
					SUM_real := addNumbers(temp_real1,notTemp_real2);
					
					--======================================================
					-- 2.4) temp_im1 = XiYr
					--======================================================
					coeff3 := inQubits(j).beta.real;
					
					temp_im1 := multNumbers(multtemp.imaginary,inQubits(j).beta.real);
						
					--======================================================
					-- 2.5) temp_im2 = XrYi
					--======================================================
					coeff4 := inQubits(j).beta.imaginary;
					
					temp_im2 := multNumbers(multtemp.real,inQubits(j).beta.imaginary);
						
					--=========================================
					-- 2.6) add_im = temp_im1 + temp_im2			
					--=========================================
					SUM_im := addNumbers(temp_im1,temp_im2);
					
					multtemp.real := SUM_real;
					multtemp.imaginary := SUM_im;						
					
				END IF;
			--j := j+1;
			END LOOP;
		
			--******************************
			-- perform CNOT on data qubits
			--******************************
			IF (i = (two2numQ-2)) THEN
				swap.real := multtemp.real;
				swap.imaginary := multtemp.imaginary;
				--outQubits(two2numQ-1).real <= outQubits(two2numQ-2).real;
				--outQubits(two2numQ-1).imaginary <= outQubits(two2numQ-2).imaginary;
				--outQubits(two2numQ-2).real <= swap.real;
				--outQubits(two2numQ-2).imaginary <= swap.imaginary;
			ELSIF (i = (two2numQ-1)) THEN
				outQubits(two2numQ-2).real <= multtemp.real;
				outQubits(two2numQ-2).imaginary <= multtemp.imaginary;
				outQubits(two2numQ-1).real <= swap.real;
				outQubits(two2numQ-1).imaginary <= swap.imaginary;
			ELSE
				outQubits(i).real <= multtemp.real;
				outQubits(i).imaginary <= multtemp.imaginary;
			END IF;
		END LOOP;
		

		
		
		
	END PROCESS;
END myCNOT;

