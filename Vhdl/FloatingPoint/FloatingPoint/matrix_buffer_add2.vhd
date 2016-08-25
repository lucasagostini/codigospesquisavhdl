library ieee;
use ieee.std_logic_1164.all;
use work.complex_pkg.all;

entity matrix_buffer_add2 is
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

architecture rtl of matrix_buffer_add2 is
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
	complex32_reg_shitfer port map(clk 		=> clk,
											 rst 		=> rst,
											 input 	=> buffer_after,
											 output 	=> buffer_out,
											 shift 	=> read_buffer,
											 shift_in => czero,
											 shift_out => sum);
/*Mudar aqui entre as opções para fazer diferentes operaçoes (add, sub) */
	buffer_sum:
	for i in 0 to n-1 generate
		add:complex32_mul port map(buffer_a_prev(i), buffer_b_prev(i), buffer_after(i));
	end generate;
	
end rtl;