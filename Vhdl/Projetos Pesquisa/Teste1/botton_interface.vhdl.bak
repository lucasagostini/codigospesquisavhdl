LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY button_interface IS
	PORT (start : IN STD_LOGIC;
	      clock : IN STD_LOGIC;
	      mux_ctrl : OUT STD_LOGIC
	      );
END button_interface;


ARCHITECTURE behavioral OF button_interface IS	 
TYPE state_type IS (A,B);
BEGIN
PROCESS(start,clock)
variable state : state_type := A;
BEGIN
IF (clock'event and clock = '1') THEN
	CASE state IS
	WHEN A=>	
		mux_ctrl <= '0';
		IF (start = '0') THEN
			state := B;
		END IF;
	WHEN B=>
		mux_ctrl <= '1';
		IF (start = '0') THEN
			state := A;
		END IF;
	END CASE;
END IF;		
END PROCESS;
END behavioral;
