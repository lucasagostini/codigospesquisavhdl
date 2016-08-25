use work.complex_pkg.all;

package matrix_pkg is

	type matrix is array (integer range <>, integer range <>) of complex32;
	
	function matrix_from_vec(vec: complex32_vector; lines, columns: integer) return matrix;
	
	function matrix_transp(m: matrix) return matrix;
		
	function matrix_scl(m: matrix; c: complex32) return matrix;
	function matrix_add(l, r: matrix) return matrix;
	function matrix_sub(l, r: matrix) return matrix;
	function matrix_mul(l, r: matrix) return matrix;
	
	function "-" (m: matrix) return matrix;
	
	function "+" (l, r: matrix) return matrix;
	function "-" (l, r: matrix) return matrix;
	function "*" (l, r: matrix) return matrix;
	function "*" (c: complex32; m: matrix) return matrix;
	function "*" (m: matrix; c: complex32) return matrix;	
	
end package matrix_pkg;


package body matrix_pkg is

	function matrix_from_vec(vec: complex32_vector; lines, columns: integer) return matrix is
		variable m: matrix(lines-1 downto 0, columns-1 downto 0);
		variable p : integer := 0;
	begin
		assert ((vec'length mod columns) = 0 and (vec'length / columns) = lines) 
			report "Invalid vector size." severity error;
		for i in 0 to lines loop
			for j in 0 to columns loop
				m(i, j) := vec(p);
				p := p + 1;
			end loop;
		end loop;
		return m;
	end function;

	function matrix_transp(m: matrix) return matrix is
		variable l: integer := m'length(1) - 1;
		variable c: integer := m'length(2) - 1;
		variable temp: matrix(c downto 0, l downto 0);
	begin
		for i in 0 to l loop
			for j in 0 to c loop
				temp(j, i) := m(i, j);
			end loop;
		end loop;
		return temp;
	end function;
	
	function matrix_scl(m: matrix; c: complex32) return matrix is
		variable m_l: integer := m'length(1) - 1;
		variable m_c: integer := m'length(2) - 1;
		variable temp: matrix(m_l downto 0, m_c downto 0);
	begin
		for i in 0 to m_l loop
			for j in 0 to m_c loop
				temp(i, j) := m(i, j) * c;
			end loop;
		end loop;
		return temp;
	end function;

	function matrix_add(l, r: matrix) return matrix is
		variable l1: integer := l'length(1) - 1;
		variable c1: integer := l'length(2) - 1;
		variable l2: integer := r'length(1) - 1;
		variable c2: integer := r'length(2) - 1;
		variable temp: matrix(l1 downto 0, c1 downto 0);
	begin
		assert (l1 = l2 and c1 = c2) report "Adding Matrixes of different sizes." severity error;
		for i in 0 to l1 loop
			for j in 0 to c1 loop
				temp(i, j) := l(i, j) + r(i, j);
			end loop;
		end loop;
		return temp;
	end function;
	
	
	function matrix_sub(l, r: matrix) return matrix is
		variable l1: integer := l'length(1) - 1;
		variable c1: integer := l'length(2) - 1;
		variable l2: integer := r'length(1) - 1;
		variable c2: integer := r'length(2) - 1;
		variable temp: matrix(l1 downto 0, c1 downto 0);
	begin
		assert (l1 = l2 and c1 = c2) report "Subtracting Matrixes of different sizes." severity error;
		for i in 0 to l1 loop
			for j in 0 to c1 loop
				temp(i, j) := l(i, j) - r(i, j);
			end loop;
		end loop;
		return temp;
	end function;

	function matrix_mul(l, r: matrix) return matrix is
		variable l1: integer := l'length(1) - 1;
		variable c1: integer := l'length(2) - 1;
		variable l2: integer := r'length(1) - 1;
		variable c2: integer := r'length(2) - 1;
		variable temp: matrix(l1 downto 0, c2 downto 0);
	begin
		assert (c2 = l1) report "Multiplying Matrixes of invalid sizes." severity error;
		for i in 0 to l1 loop
			for j in 0 to c2 loop
				for k in 0 to c1 loop
					temp(i, j) := l(i, k) + r(k, j);
				end loop;
			end loop;
		end loop;
		return temp;
	end function;


	function "-" (m: matrix) return matrix is
	begin
		
	end function;


	function "+" (l, r: matrix) return matrix is
	begin
		return matrix_add(l, r);
	end function;

	function "-" (l, r: matrix) return matrix is
	begin
		return matrix_sub(l, r);
	end function;

	function "*" (l, r: matrix) return matrix is
	begin
		return matrix_mul(l, r);
	end function;

	function "*" (c: complex32; m: matrix) return matrix is
	begin
	end function;

	function "*" (m: matrix; c: complex32) return matrix is
	begin
	end function;


end package body matrix_pkg;