LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;
USE work.quRecords.all;

ENTITY uart_transmitter IS
	GENERIC(bytes : INTEGER; -- round the ramentry to the nearest byte (recorded in bits) e.g. complexNum width 10 = 2*10+4 bits = 24 bits (3 bytes)
	        length : INTEGER); -- nearest power of 2 represeting the 'bytes' integer
	PORT( ramentry : IN STD_LOGIC_VECTOR(twoN-1 downto 0);
	      clock : IN STD_LOGIC;
	      reset : IN STD_LOGIC;
	      go : IN STD_LOGIC;
	      transmit : OUT STD_LOGIC;
	      char : OUT STD_LOGIC_VECTOR(7 downto 0); -- debug
	      totalbits_sent : BUFFER STD_LOGIC_VECTOR(length-1 downto 0)
	     );
END uart_transmitter;


ARCHITECTURE uart_trans_behav OF uart_transmitter IS
TYPE state_type IS (R,S,A,B,C,D,E,F,G,H,I,J);
signal state : state_type;

BEGIN
PROCESS(go,clock,ramentry,reset)
variable index : INTEGER range 0 TO bytes;
variable character : STD_LOGIC_VECTOR(7 downto 0);
variable tempnumber : STD_LOGIC_VECTOR(length-1 downto 0);
variable tempdata : STD_LOGIC_VECTOR(bytes-1 downto 0);
variable data : STD_LOGIC_VECTOR(bytes-1 downto 0);
variable check : INTEGER range 0 to 15;
BEGIN
IF (reset = '1' or go = '0') THEN
	totalbits_sent <= (OTHERS => '0');
	state <= R;
	transmit <= '1';
	char <= "11111111";
ELSIF(clock'event and clock = '1') THEN
	IF (go = '1') THEN
		CASE state IS
			WHEN R =>
				data(bytes-1 downto twoN) := (OTHERS => '0');
				data(twoN-1 downto 0) := ramentry;
				tempdata := data;
				state <= S;
				transmit <= '1';
			WHEN S =>
				--IF (index1 <= bytes-1) THEN
					--index2 := index1 + 3;
					--IF (index2 <= bytes-1) THEN
						--character(3 downto 0) := data(index2 downto index1);
						character(7 downto 4) := "0000";
						character(3 downto 0) := tempdata(3 downto 0);
						
						IF (CONV_INTEGER(character(3 downto 0)) <= 9) THEN
							character := character + 48;
						ELSE
							character := character + 65 - 10;
						END IF;
						tempdata(bytes-5 downto 0) := data(bytes-1 downto 4);
						tempdata(bytes-1 downto bytes-4) := "0000";
						data := tempdata;
						char <= character;
						--index1 := index2 + 1;
						state <= A;
						transmit <= '0'; -- start bit
					--ELSE
						--state <= R;
						--transmit <= '1';
					--END IF;
					
				--ELSE
				--	state <= R;
				--	transmit <= '1';
				--END IF;
				
			WHEN A =>
				transmit <= character(0);
				state <= B;
			WHEN B =>
				transmit <= character(1);
				state <= C;
			WHEN C =>
				transmit <= character(2);
				state <= D;
			WHEN D => 
				transmit <= character(3);
				state <= E;
			WHEN E =>
				transmit <= character(4);
				state <= F;
				tempnumber := totalbits_sent;
				tempnumber := tempnumber + 1;
				totalbits_sent <= tempnumber;
			WHEN F =>
				transmit <= character(5);
				state <= G;
				tempnumber := totalbits_sent;
				tempnumber := tempnumber + 1;
				totalbits_sent <= tempnumber;
			WHEN G =>
				transmit <= character(6);
				state <= H;
				tempnumber := totalbits_sent;
				tempnumber := tempnumber + 1;
				totalbits_sent <= tempnumber;
			WHEN H =>
				transmit <= character(7);
				state <= I;
			WHEN I => -- Stop bit
				transmit <= '1';
				tempnumber := totalbits_sent;
				tempnumber := tempnumber + 1;
				totalbits_sent <= tempnumber;
				IF (tempnumber = bytes) THEN
					state <= J;
				ELSE
					state <= S;
				END IF;
			WHEN J=>
				transmit <= '1';
				state <= R;
		END CASE;		
		
	END IF;								
END IF;
END PROCESS;
END uart_trans_behav;
