library ieee;
use ieee.std_logic_1164.all;
use work.complex_pkg.all;


entity complex32_mul is
generic (n: integer := 8);
port (
	a			: in complex32;
	b			: in complex32;
	a_enable	: in std_logic;
	b_enable	: in std_logic;
	
	write_buffer : in std_logic;
	read_buffer  : in std_logic;
	start		: in std_logic;
	clk		: in std_logic;
	rst		: in std_logic;
	
	sum		: out complex32
);
end entity;

architecture rtl of complex32_mul is
component complex32_reg_shitfer is
		generic (n: integer := 8);
		port (
			clk, rst	: in  std_logic;
			shift 	: in  std_logic;
			
			shift_in : in  complex32;
			shift_out: out complex32;
			
			input 	: in  complex32_vector(n-1 downto 0);
			output	: out complex32_vector(n-1 downto 0)
		);
	end component;
	

	component complex32_reg is
		generic (n: integer := 8);
		port (
			clk, rst	: in  std_logic;
			input 	: in  complex32_vector(n-1 downto 0);
			output	: out complex32_vector(n-1 downto 0)
		);
	end component;
	
	component complex32_reg2 is
		generic (n: integer := 8);
		port (
			clk, rst	: in  std_logic;
			input 	: in  complex32;
			output	: out complex32
		);
	end component;
	
	component	complex32_mult is
	port (
		a, b: in complex32;
		o   : out complex32);
	end component;

	
	component complex32_sub is
		port (
			a, b: in complex32;
			o   : out complex32);
	end component;
	signal buffer_a_in	: complex32_vector(n-1 downto 0);
	signal buffer_b_in	: complex32_vector(n-1 downto 0);
	signal buffer_a_prev	: complex32_vector(n-1 downto 0);
	signal buffer_b_prev	: complex32_vector(n-1 downto 0);
	signal buffer_after	: complex32_vector(n-1 downto 0);
	signal buffer_out 	: complex32_vector(n-1 downto 0);
	signal dummy : complex32;
	signal buffer_aft,buffer_out2 : complex32;
	signal S1,S2,S3,S4,S5,S6,S7 : complex32;
	begin
	buffer_a:
	complex32_reg_shitfer port map(clk 		=> clk,
											 rst 		=> rst,
											 output 	=> buffer_a_in,
											 shift_in => a,
											 shift 	=> write_buffer,
											 input 	=> (others => czero));
	buffer_b:								 
	complex32_reg_shitfer port map(clk 		=> clk,
											 rst 		=> rst,
											 output 	=> buffer_b_in,
											 shift_in => b,
											 shift 	=> write_buffer,
											 input 	=> (others => czero));
	
	buffer_a_saved:
	complex32_reg port map (clk 		=> start,
									rst 		=> rst,
									input		=> buffer_a_in,
									output	=> buffer_a_prev);
	buffer_b_saved:
	complex32_reg port map (clk 		=> start,
									rst 		=> rst,
									input		=> buffer_b_in,
									output	=> buffer_b_prev);
	
	buffer_output:
	complex32_reg2 port map(clk 		=> clk,
											 rst 		=> rst,
											 input 	=> buffer_aft,
											 output 	=> buffer_out2);
buffer_mult:
for i in 0 to n-1 generate
		mult:complex32_mult port map(buffer_a_prev(i), buffer_b_prev(i), buffer_after(i));
end generate;
	process(clk)
	begin
		S1<=buffer_after(1)+buffer_after(0);
		S2<=buffer_after(3)+buffer_after(2);
		S3<=buffer_after(5)+buffer_after(4);
		S4<=buffer_after(7)+buffer_after(6);
		S5<=S1+S2;
		S6<=S3+S4;
		S7<=S5+S6;
		buffer_aft<=S7;
	end process;
end rtl;
