LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY button_interface IS
	PORT(pbinput : IN STD_LOGIC;
	     clock : IN STD_LOGIC;
	     output : OUT STD_LOGIC
	     );
END button_interface;


ARCHITECTURE behavioral OF button_interface IS
TYPE state_type IS (A,B,C,D);
signal state : state_type := A;
BEGIN
PROCESS(pbinput,clock)
--variable state : state_type := A;
BEGIN
IF (clock'event and clock = '1') THEN
	CASE state IS
	WHEN A=>	
		output <= '0';
		IF (pbinput = '0') THEN
			state <= B;
		ELSE
			state <= A;
		END IF;
	WHEN B=>
		output <= '0';
		IF (pbinput = '0') THEN
			state <= C;
		ELSE
			state <= A;
		END IF;
	WHEN C=>
		output <= '0';
		IF (pbinput = '0') THEN
			state <= D;
		ELSE
			state <= A;
		END IF;
	WHEN D=>
		output <= '1';
		state  <= A;
	END CASE;
END IF;		
END PROCESS;
END behavioral;