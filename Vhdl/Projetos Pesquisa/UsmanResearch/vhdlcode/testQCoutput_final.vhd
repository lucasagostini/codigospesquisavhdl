LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.quRecords.all;

ENTITY testQCoutput_final IS
	PORT(   clock : IN STD_LOGIC;
		pb_reset : IN STD_LOGIC;
		pb_start : IN STD_LOGIC;
		done : OUT STD_LOGIC;
		bitcount : OUT STD_LOGIC_VECTOR(4 downto 0); -- debug
		addr : OUT STD_LOGIC_VECTOR(2 downto 0); -- debug
		qubitout : OUT STD_LOGIC_VECTOR(twoN-1 downto 0); --debug
		transmit: OUT STD_LOGIC
	    );
END testQCoutput_final;

ARCHITECTURE structural OF testQCoutput_final IS

COMPONENT quantumFFT3 
	PORT(clk : IN STD_LOGIC;
	     phase_real : IN STD_LOGIC_VECTOR(N-1 downto 0);
	     phase_imag : IN STD_LOGIC_VECTOR(N-1 downto 0);
	     root2 : IN STD_LOGIC_VECTOR(N-1 downto 0);
	     inQubit1: IN quBit;
	     inQubit2: IN quBit;
	     inQubit3: IN quBit;    	 
	     outQubit1: OUT quBit;
	     outQubit2: OUT quBit;
	     outQubit3: OUT qubit
	    );
END COMPONENT;

COMPONENT clk_div
 	GENERIC(div_clk_by: INTEGER; 
                 num_bits: INTEGER); 
 	PORT (in_clk, enable, reset: in std_logic; -- clock, enable, reset 
     	      out_clk: buffer std_logic); -- new clock frequency 
END COMPONENT; 

COMPONENT qubit_mux
	GENERIC(totalentries : INTEGER;
		length : INTEGER
		);
	PORT( input : IN result(totalentries downto 0);
	      address : IN STD_LOGIC_VECTOR(length-1 downto 0);
	      output : OUT STD_LOGIC_VECTOR(twoN-1 downto 0)
	     );
END COMPONENT;

COMPONENT uart_ctrl 
	GENERIC(bytes: INTEGER;
		byteslength : INTEGER;
		ramsize: INTEGER;
		ramsizelength : INTEGER);
	PORT(ramcounter : BUFFER STD_LOGIC_VECTOR(ramsizelength-1 downto 0);
	     bitcounter : IN STD_LOGIC_VECTOR(byteslength-1 downto 0);
	     go : IN STD_LOGIC;
	     clock : IN STD_LOGIC;
	     reset : IN STD_LOGIC;
	     ramentry : IN STD_LOGIC_VECTOR(twoN-1 downto 0);
	     --ramread_start : OUT STD_LOGIC;
	     toUART : OUT STD_LOGIC_VECTOR(twoN-1 downto 0);
	     done : OUT STD_LOGIC;
	     uart_start : OUT STD_LOGIC
	     );
END COMPONENT;

COMPONENT uart_transmitter
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
END COMPONENT;

--COMPONENT RAM_reader
	--GENERIC( ramsize : INTEGER;
	  --      length : INTEGER);
	--PORT(	busy : IN STD_LOGIC;
		--reset : IN STD_LOGIC;
		--clock : IN STD_LOGIC;
		--ram_out : IN STD_LOGIC_VECTOR(twoN-1 downto 0);
		--toUART : OUT STD_LOGIC_VECTOR(twoN-1 downto 0);
		--done : OUT STD_LOGIC;
		--address : BUFFER STD_LOGIC_VECTOR(length-1 downto 0)
	  --   );
--END COMPONENT;

COMPONENT QC_ctrl
	GENERIC(numCC : INTEGER; -- number of CC required for computation
		length : INTEGER); -- vector length to represent numCC
	PORT (start, clock, reset : IN STD_LOGIC;
	      sendresult : OUT STD_LOGIC
	      );
END COMPONENT;

COMPONENT qc_buttons
	PORT( pb_start, pb_reset, clock : IN STD_LOGIC;
	      start : OUT STD_LOGIC;
	      reset : OUT STD_LOGIC
	     );
END COMPONENT;

SIGNAL in1,in2,in3,out1,out2,out3 : quBit;
SIGNAL phasereal,phaseimag,root2 : STD_LOGIC_VECTOR(N-1 downto 0);
SIGNAL uart_clk : STD_LOGIC;
signal qc_clk : STD_LOGIC;
signal zero, one : STD_LOGIC;
signal sendresult : STD_LOGIC;

signal qcresult : result(6 downto 0);
signal address : STD_LOGIC_VECTOR(2 downto 0);
signal currententry, toUART : STD_LOGIC_VECTOR(twoN-1 downto 0);
signal uart_start : STD_LOGIC;
signal bits_sent : STD_LOGIC_VECTOR(4 downto 0);
signal char : STD_LOGIC_VECTOR(7 downto 0); -- debug
signal start, reset : STD_LOGIC;
signal button_clk : STD_LOGIC;
BEGIN
zero <= '0';
one <= '1';
in1.alpha.real <= "0000000000";
in1.alpha.imaginary <= "0000000000";
in1.beta.real <= "0100000000";
in1.beta.imaginary <= "0000000000";
in2.alpha.real <= "0100000000";
in2.alpha.imaginary <= "0000000000";
in2.beta.real <= "0000000000";
in2.beta.imaginary <= "0000000000";
in3.alpha.real <= "0000000000";
in3.alpha.imaginary <= "0000000000";
in3.beta.real <= "0100000000";
in3.beta.imaginary <= "0000000000";
phasereal <= "0010110101";
phaseimag <= "0010110101";
root2 <= "0010110101";

reset <= NOT(pb_reset); -- fixme
start <= NOT(pb_start); -- fixme
button_clkdiv: clk_div
	   GENERIC MAP(8,4)
	   PORT MAP(clock,one,reset,button_clk);
--buttons : qc_buttons PORT MAP(pb_start,pb_reset,button_clk,start,reset);	   
QC : quantumFFT3 PORT MAP(qc_clk, phasereal,phaseimag,root2,in1,in2,in3,out1,out2,out3);
QC_clkdiv: clk_div
	   GENERIC MAP(2,2)
	   PORT MAP(clock,one,reset,qc_clk);
qc_control : qc_ctrl
	     GENERIC MAP(5,3)
	     PORT MAP(start,qc_clk,reset,sendresult);
qcresult(0) <= (OTHERS => '1');
qcresult(1) <= out1.alpha.real & out1.alpha.imaginary;
qcresult(2) <= out1.beta.real & out1.beta.imaginary;
qcresult(3) <= out2.alpha.real & out2.alpha.imaginary;
qcresult(4) <= out2.beta.real & out2.beta.imaginary;
qcresult(5) <= out3.alpha.real & out3.alpha.imaginary;
qcresult(6) <= out3.beta.real & out3.beta.imaginary;
resultmux : qubit_mux
	    GENERIC MAP(6,3)
	    PORT MAP(qcresult, address, currententry);
uart_clkdiv: clk_div
	     GENERIC MAP(347,9)
	     PORT MAP(clock,one,reset,uart_clk);
--mux_read : RAM_reader
--	   GENERIC MAP(6,3)
--	   PORT MAP(ramread_start,reset,uart_clk,currententry,toUART,done,address);
uart_transmit : uart_transmitter
	       GENERIC MAP(24,5)
	       PORT MAP(toUART,uart_clk,reset,uart_start,transmit,char,bits_sent);
uart_control : uart_ctrl
	       GENERIC MAP(24,5,6,3)
	       PORT MAP(address,bits_sent,sendresult,uart_clk,reset,currententry,toUART,done,uart_start);
addr <= address;
bitcount <= bits_sent;
qubitout <= out2.beta.real & out2.beta.imaginary;
END structural;