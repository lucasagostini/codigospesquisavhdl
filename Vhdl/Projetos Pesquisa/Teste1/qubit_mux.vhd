LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.quRecords.all;

ENTITY qubit_mux IS
	GENERIC(totalentries : INTEGER;
		length : INTEGER
		);
	PORT( input : IN result(totalentries downto 0);
	      address : IN STD_LOGIC_VECTOR(length-1 downto 0);
	      output : OUT STD_LOGIC_VECTOR(twoN-1 downto 0)
	     );
END qubit_mux;

ARCHITECTURE qubit_mux_behav OF qubit_mux IS
BEGIN
PROCESS(input,address)
variable index : INTEGER range 0 to totalentries+1;
BEGIN
index := CONV_INTEGER(address);
IF (index <= totalentries) THEN
	output <= input(index);
ELSE
	output <= (OTHERS => '1');
END IF;
END PROCESS;
END qubit_mux_behav;