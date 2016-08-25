LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.quRecords.all;

ENTITY QC_ctrl IS
	GENERIC(numCC : INTEGER; -- number of CC required for computation
		length : INTEGER); -- vector length to represent numCC
	PORT (start, clock, reset : IN STD_LOGIC;
	      sendresult : OUT STD_LOGIC
	      );
END QC_ctrl;

ARCHITECTURE QC_ctrl_behav OF QC_ctrl IS
TYPE state_type IS (R,A,B);
signal state : state_type;
BEGIN
PROCESS (start, clock, reset)
variable count : INTEGER;
BEGIN
IF (reset = '1') THEN
	state <= R;
	sendresult <= '0';
	count := 0;
ELSIF (clock'event and clock = '1') THEN
	CASE state IS
		WHEN R =>
			sendresult <= '0';
			count := 0;
			IF (start = '1') THEN
				state <= A;
			ELSE
				state <= R;
			END IF;
		WHEN A =>
			sendresult <= '0';
			IF (count <= numCC) THEN
				state <= A;
				count := count + 1;
			ELSE
				state <= B;
			END IF;
		WHEN B =>
			sendresult <= '1';
			state <= B;
	END CASE;
END IF;
END PROCESS;
END QC_ctrl_behav;	