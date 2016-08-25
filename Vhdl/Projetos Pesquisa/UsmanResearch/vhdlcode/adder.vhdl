-- File:     adder.vhdl
-- Author:   K. S., N. Z.
-- Date:     2004 
--
-- Description:
--
-- This module is an adder. The module computes 'SUM = A[0..N-1] + B[0..N-1]'.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.all;
--USE ieee.std_logic_signed.all;
USE ieee.std_logic_unsigned.all;
USE work.quRecords.all;

ENTITY adder IS
	PORT(	A,B	: IN STD_LOGIC_VECTOR(N-1 downto 0);
		SUM	: OUT STD_LOGIC_VECTOR(N-1 downto 0));
END adder;

ARCHITECTURE myAdd OF adder IS

BEGIN
	PROCESS(A,B)
	VARIABLE temp : STD_LOGIC_VECTOR (N-2 downto 0);
	VARIABLE zeros : STD_LOGIC_VECTOR(N-2 downto 0);
	VARIABLE temp4 : STD_LOGIC_VECTOR (N-3 downto 0);
	VARIABLE temp2 : STD_LOGIC_VECTOR(N-3 downto 0);
	BEGIN
		zeros := (OTHERS => '0');
		IF (A(N-2) = '1' AND B(N-2) = '1') THEN
			IF (A(N-1) /= B(N-1)) THEN
				SUM(N-1 downto N-2)<= "00";
				SUM(N-3 downto 0) <= A(N-3 downto 0);
			END IF;
		ELSIF(A(N-2) = '1' OR B(N-2) = '1') THEN
			IF (A(N-1) /= B(N-1)) THEN
				IF (A(N-2) = '1') THEN
					SUM(N-1) <= A(N-1);
					SUM(N-2) <= '0';
					temp(N-2 downto 0) := A(N-2 downto 0) - B(N-2 downto 0);
					SUM(N-2 downto 0) <= temp(N-2 downto 0);

				ELSE
					SUM(N-1) <= B(N-1);
					SUM(N-2) <= '0';
					temp(N-2 downto 0) := B(N-2 downto 0) - A(N-2 downto 0);
					SUM(N-2 downto 0) <= temp(N-2 downto 0);
				END IF;
			ELSE
				IF (A(N-2) = '1') THEN
					SUM(N-1 downto 0) <= A(N-1 downto 0);
				ELSE
					SUM(N-1 downto 0) <= B(N-1 downto 0);
				END IF;
			END IF;
		ELSIF (A(N-2 downto 0) = zeros) THEN
			SUM(N-1 downto 0) <= B(N-1 downto 0);
		ELSIF(B(N-2 downto 0) = zeros) THEN
			SUM(N-1 downto 0) <= A(N-1 downto 0);
		ELSE
			temp2 := (OTHERS => '0');
			temp := (OTHERS => '0');
			IF (A(N-3 downto 0) = temp2 AND B(N-3 downto 0) = temp2) THEN
				SUM(N-1) <= '0';
				SUM(N-2) <= '0';
				SUM(N-3 downto 0) <= A(N-3 downto 0);
			--ELSIF (A(N-3 downto 0) = tem2) THEN
				--SUM(N-1 downto 0) <= B(N-1 downto 0);
			--ELSIF (B(N-3 downto 0) = temp2) THEN
				--SUM(N-1 downto 0) <= A(N-1 downto 0);
			-- A > B case
			ELSIF (A(N-3 downto 0) > B(N-3 downto 0)) THEN
				SUM(N-1) <= A(N-1);
			-- A = B case
			ELSIF (A(N-3 downto 0) = B(N-3 downto 0)) THEN
				IF (A(N-1) = B(N-1)) THEN
					SUM(N-1) <= A(N-1);
				ELSE
					SUM(N-1) <= '0';
				END IF;
			-- A < B
			ELSE
				SUM(N-1) <= B(N-1);
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
				SUM(N-1) <= A(N-1);
				temp4(N-3 downto 0) := A(N-3 downto 0) + B(N-3 downto 0);
				temp := A(N-2 downto 0) + B(N-2 downto 0);
			END IF;
			IF (temp(N-2) = '0') THEN
				SUM(N-2) <= '0';
				SUM(N-3 downto 0) <= temp4(N-3 downto 0);
			ELSE
				SUM(N-2) <= '0';
				SUM(N-3 downto 0) <= temp(N-2 downto 1);
			END IF;
		END IF;	
	END PROCESS;		
		
END myAdd;