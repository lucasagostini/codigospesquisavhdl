-- testOneGate.vhdl
--
-- Description:

USE work.quRecords.all;

ENTITY testOneGate IS
	-- no ports in testbench
END testOneGate;

ARCHITECTURE myTest OF testOneGate IS
-- declarations
COMPONENT Xgate 
	PORT(	inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END COMPONENT;

COMPONENT Zgate 
	PORT(	inQubit		: IN quBit;
		outQubit		: OUT quBit
	    );
END COMPONENT;

COMPONENT CNOTgate
	GENERIC(numQubits			: INTEGER;
		two2numQ		: INTEGER 
	       );
	PORT(	inQubits		: IN quArray(numQubits-1 downto 0);
		outQubits		: OUT entangledQubit(two2numQ-1 downto 0)
	    );
END COMPONENT;


SIGNAL inQ,outQ				: quBit;
SIGNAL inQarray				: quArray(1 downto 0);
SIGNAL outQarray				: entangledQubit(3 downto 0);
  

BEGIN

		-- instatiate device under test
		DUT0:	CNOTgate  
			GENERIC MAP(numQubits => 2,two2numQ => 4)
			PORT MAP(inQubits => inQarray, outQubits => outQarray);
			--DUT1: Zgate PORT MAP(inQ,outQ);
			--DUT2: Xgate PORT MAP(inQ,outQ);
			
		-- This process applies test vectors
     		--testVec:PROCESS       
		--	BEGIN
				-- test CNOT
				--inQarray(1).alpha.real <= "0010110101";
				--inQarray(1).alpha.imaginary <= "0000000000";
				--inQarray(1).beta.real <= "0010110101";
				--inQarray(1).beta.imaginary <= "0000000000";
				--inQarray(0).alpha.real <= "0010110101";
				--inQarray(0).alpha.imaginary <= "0000000000";
				--inQarray(0).beta.real <= "0010110101";
				--inQarray(0).beta.imaginary <= "0000000000";
				--WAIT FOR 20 ns;
			
				-- test Z or X        
		        		--inQ.alpha.real <= "0011";
		        		--inQ.alpha.imaginary <= "0011";
		        		--inQ.beta.real <= "0001";
		        		--inQ.beta.imaginary <= "0001";
					--WAIT FOR 20 ns;
		        		--inQ.alpha.real <= "1111";
		        		--inQ.alpha.imaginary <= "1111";
		        		--inQ.beta.real <= "0000";
		        		--inQ.beta.imaginary <= "0000";			
		        		--WAIT FOR 20 ns;
		        
    	--	END PROCESS;
    		
 

END myTest;

