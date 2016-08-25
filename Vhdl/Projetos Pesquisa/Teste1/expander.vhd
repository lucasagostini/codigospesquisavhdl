LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.QURECORDS.ALL;

ENTITY expander IS
   GENERIC(numQubits : INTEGER;
           outputSize : INTEGER); -- outputSize = 2^{numQubits}
   PORT(input : IN quArray(numQubits-1 downto 0);
        output : OUT entangledQubit(outputSize-1 downto 0)
        );
END expander;

ARCHITECTURE expander_behavioral OF expander IS
    
    COMPONENT complexMult 
	    PORT(	X,Y		: IN complexNum;
		    outComplexMult		: OUT complexNum
	        );
    END COMPONENT;
    
    BEGIN
        
        expander_loop: FOR i in 0 to outputSize-1 GENERATE
        compmult1 : complexMult PORT MAP(input(i
    
    
       