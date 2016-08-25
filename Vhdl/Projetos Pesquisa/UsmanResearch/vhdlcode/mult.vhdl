-- mult.vhdl
--
-- Description: Multiplies two fixed point numbers.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;				-- signed???
USE work.quRecords.all;

ENTITY mult IS
	PORT(	in1,in2		: IN STD_LOGIC_VECTOR(N-1 downto 0);
		outMult		: OUT STD_LOGIC_VECTOR(N-1 downto 0)
	    );
END mult;

ARCHITECTURE myMult OF mult IS
BEGIN
	PROCESS(in1,in2)
	
	--VARIABLE temp		: STD_LOGIC_VECTOR(twoN-1 downto 0);
	VARIABLE temp		: STD_LOGIC_VECTOR(twoN-5 downto 0);
	VARIABLE roundtemp : STD_LOGIC_VECTOR(N-2 downto 0);
	VARIABLE output : STD_LOGIC_VECTOR(N-3 downto 0);
	VARIABLE r : STD_LOGIC;
	--VARIABLE sticky : STD_LOGIC_VECTOR(N-5 downto 0);
	--VARIABLE s : STD_LOGIC := '0';
	--VARIABLE index : INTEGER RANGE 0 TO N-5 := 0;
	BEGIN
		-- determine mantissa
		--temp := in1(N-1 downto 0)*in2(N-1 downto 0);
		--outMult <= temp(N-1 downto 0);

		-- Determine sign bit
		IF in1(N-1) = '1' AND in2(N-1)='1' THEN						-- both negative -> positive
			outMult(N-1) <= '0';
		ELSIF in1(N-1) = '0' AND in2(N-1) = '0' THEN				-- both positive -> positive
			outMult(N-1) <= '0';
		ELSE						-- one negative -> negative
			outMult(N-1) <= '1';
		END IF;
		IF (in1(N-2) = '1' OR in2(N-2) = '1') THEN
			outMult(N-2 downto 0) <= in2(N-2 downto 0);
		ELSE		
			-- determine mantissa
			outMult(N-2) <= '0';
			temp := in1(N-3 downto 0)*in2(N-3 downto 0);
			-- ROUND TO NEAREST
			roundtemp := temp(twoN-5 downto N-3);
			--r :=  temp(N-4);
			--sticky := temp(N-5 downto 0);

--			--FOR index IN 0 TO N-5 LOOP
--			--	s := s OR sticky(index);
--			--END LOOP;
			
				
			output := temp(twoN-5 downto N-2);
			
			--IF (r = '0') THEN
			
--			ELSIF (r = '1' AND s = '1') THEN
		--		output := output + 1;
			--ELSIF (r = '1' AND s = '0') THEN
				--IF (output(0) = '1') THEN
					--output :=output + 1;
				--END IF;
			--END IF;
			IF (roundtemp(N-3) = '1') THEN
				output := output + 1;
			END IF; 
			outMult(N-3 downto 0) <= output;
		END IF;
			
	END PROCESS;
END myMult;