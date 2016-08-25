-- Quantum Register
-- Hold quantum state between evolution steps

USE ieee;
USE ieee.std_logic_1164.all;
USE work.quRecords.all;

ENTITY QuantumRegister IS
	GENERIC( NUM: INTEGER -- number i/o qubits
	);
	PORT(input : in quArray(NUM-1 downto 0);
	     clock : in  STD_LOGIC;
   	     output : out quArray(NUM-1 downto 0)
   	     );
END QuantumRegister;

ARCHITECTURE behavioral OF QuantumRegister IS

BEGIN
PROCESS(input, clock)
BEGIN
IF (clock'EVENT AND clock = '1') THEN
	output <= input;
END IF;
END PROCESS
END behavioral;