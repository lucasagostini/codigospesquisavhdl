library ieee;
use ieee.std_logic_1164.all;
use work.complex_pkg.all;

entity matrix_buffer_add is
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

architecture rtl of matrix_buffer_add is
	signal buffer_a_in	: complex32_vector(n-1 downto 0);
	signal buffer_b_in	: complex32_vector(n-1 downto 0);
	signal buffer_a_prev	: complex32_vector(n-1 downto 0);
	signal buffer_b_prev	: complex32_vector(n-1 downto 0);
	signal buffer_after	: complex32_vector(n-1 downto 0);
	signal buffer_out 	: complex32_vector(n-1 downto 0);
	
begin

	feed_buffer_a:
	process(clk, rst, write_buffer, a_enable)
	begin
		if rst = '1' then
			buffer_a_in 	<= (others => czero); 
		elsif rising_edge(clk) then
			if a_enable = '1' and write_buffer = '1' then
				buffer_a_in(0) <= a;
				for i in 1 to n-1 loop
					buffer_a_in(i) <= buffer_a_in(i-1);
				end loop;
			end if;
		end if;
	end process;
	
	feed_buffer_b:
	process(clk, rst, write_buffer, b_enable)
	begin
		if rst = '1' then
			buffer_b_in 	<= (others => czero); 
		elsif rising_edge(clk) then
			if b_enable = '1' and write_buffer = '1' then
				buffer_b_in(0) <= b;
				for i in 1 to n-1 loop
					buffer_b_in(i) <= buffer_b_in(i-1);
				end loop;
			end if;
		end if;
	end process;
	
	buffer_pass_on:
	process(start, rst)
	begin
		if rst = '1' then
			buffer_a_prev 	<= (others => czero);
			buffer_b_prev 	<= (others => czero);
		elsif start = '1' then
			for i in 0 to n-1 loop
				buffer_a_prev(i) <= buffer_a_in(i);
				buffer_b_prev(i) <= buffer_b_in(i);
			end loop;
		end if;
	end process;
	
	output_buffer:
	process(clk, rst, read_buffer)
	begin
		if rst = '1' then
			buffer_out <= (others => czero);
			sum <= czero;
		elsif read_buffer = '1' then
			for i in 0 to n-1 loop
				buffer_out(i) <= buffer_after(i);
			end loop;
		elsif rising_edge(clk) then
			buffer_out(0) <= czero;
			for i in 1 to n-1 loop
				buffer_out(i) <= buffer_out(i-1);
			end loop;
			sum <= buffer_out(n-1);
		end if;
	end process;
	
	
	label1: for i in 0 to n-1 generate
		buffer_after(i) <= buffer_a_prev(i) + buffer_b_prev(i);
	end generate;
	
end rtl;