library ieee_proposed;
use ieee_proposed.fixed_float_types.all; 
use ieee_proposed.float_pkg.all; 

package complex_pkg is 
	
	type complex32 is record 
		re: float32;
		im: float32;
	end record;
	
	type complex32_vector is array (integer range <>) of complex32;
	
	constant float_zero: float32 := to_float(0);
	constant czero: complex32 := complex32'(float_zero, float_zero);
	
	function complex_negate    (n: complex32) return complex32;
	function complex_conjugate (n: complex32) return complex32;
	
	function "-" (n: complex32) return complex32;
	
	function complex_add (l, r: complex32) return complex32;
	function complex_sub (l, r: complex32) return complex32;
	function complex_mul (l, r: complex32) return complex32;
	function complex_div (l, r: complex32) return complex32;
	
	function "+" (l, r: complex32) return complex32;
	function "-" (l, r: complex32) return complex32;
	function "*" (l, r: complex32) return complex32;
	function "/" (l, r: complex32) return complex32;
	
end package complex_pkg;


package body complex_pkg is

	function complex_negate    (n: complex32) return complex32 is
	begin
		return complex32'(-n.re, -n.im);
	end function complex_negate;
	
	function complex_conjugate (n: complex32) return complex32 is
	begin
		return complex32'(n.re, -n.im);
	end function complex_conjugate;
	
	function "-" (n: complex32) return complex32 is
	begin
		return complex_negate(n);
	end function "-";
	
	function complex_add (l, r: complex32) return complex32 is
		variable ret: complex32;
	begin 
		return complex32'(l.re+r.re,l.im+r.im);
	end function complex_add;
	
	function complex_sub (l, r: complex32) return complex32 is
	begin 
		return complex32'(l.re - r.re, l.im - r.im);
	end function complex_sub;
	
	function complex_mul (l, r: complex32) return complex32 is
		variable re: float32;
		variable im: float32;
	begin 
		re := l.re * r.re - l.im * r.im;
		im := l.re * r.im + r.re * l.im;
		
		return complex32'(re, im);
	end function complex_mul;
	
	function complex_div (l, r: complex32) return complex32 is
		variable re: float32;
		variable im: float32;
		variable n:  float32;
	begin 	
		re := l.re * r.re + l.im * r.im;
		im := l.re * r.im - r.re * l.im;
		n  := r.re * r.re + r.im * r.im;
		
		return complex32'(re / n, im / n);
	end function complex_div;
	
	function "+" (l, r: complex32) return complex32 is
	begin
		return complex_add(l, r);
	end function "+";
	
	function "-" (l, r: complex32) return complex32 is
	begin
		return complex_sub(l, r);
	end function "-";
	
	function "*" (l, r: complex32) return complex32 is
	begin
		return complex_mul(l, r);
	end function "*";
	
	function "/" (l, r: complex32) return complex32 is
	begin
		return complex_div(l, r);
	end function "/";

end package body complex_pkg;