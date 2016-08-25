####################################################################################
## DO file to test the PHASEgate. Please uncomment the TEST you want to simulate automatically
## and comment the other 2.
####################################################################################
vcom -reportprogress 300

vsim work.C_Tgate

radix bin

###################################################################################
# General Signals                   										###
###################################################################################

add wave sim:/C_Tgate/*

####################################################################################		
			

## TEST 1 (8 bit mantissa)
#force -freeze sim:/PHASEgate/phase_real "0010110101" 
#force -freeze sim:/PHASEgate/phase_imag "0010110101" 
#force -freeze sim:/PHASEgate/inqubit.alpha.real "0010110101"
#force -freeze sim:/PHASEgate/inqubit.alpha.imaginary "0000000000"
#force -freeze sim:/PHASEgate/inqubit.beta.real "0010110101"
#force -freeze sim:/PHASEgate/inqubit.beta.imaginary "0000000000"

# TEST 2 (9 bit mantissa)
#force -freeze sim:/PHASEgate/phase_real "00101101010" 
#force -freeze sim:/PHASEgate/phase_imag "00101101010" 
#force -freeze sim:/PHASEgate/inqubit.alpha.real "00101101010"
#force -freeze sim:/PHASEgate/inqubit.alpha.imaginary "00000000000"
#force -freeze sim:/PHASEgate/inqubit.beta.real "00101101010"
#force -freeze sim:/PHASEgate/inqubit.beta.imaginary "00000000000"

# TEST 3 (10 bit mantissa)
#force -freeze sim:/PHASEgate/phase_real "001011010100" 
#force -freeze sim:/PHASEgate/phase_imag "001011010100" 
#force -freeze sim:/PHASEgate/inqubit.alpha.real "001011010100"
#force -freeze sim:/PHASEgate/inqubit.alpha.imaginary "000000000000"
#force -freeze sim:/PHASEgate/inqubit.beta.real "001011010100"
#force -freeze sim:/PHASEgate/inqubit.beta.imaginary "000000000000"

# TEST 4 (11 bit mantissa)
#force -freeze sim:/PHASEgate/phase_real "0010110101000" 
#force -freeze sim:/PHASEgate/phase_imag "0010110101000" 
#force -freeze sim:/PHASEgate/inqubit.alpha.real "0010110101000"
#force -freeze sim:/PHASEgate/inqubit.alpha.imaginary "0000000000000"
#force -freeze sim:/PHASEgate/inqubit.beta.real "0010110101000"
#force -freeze sim:/PHASEgate/inqubit.beta.imaginary "0000000000000"

#TEST1
force -freeze sim:/C_Tgate/phase_real "0010110101000" 
force -freeze sim:/C_Tgate/phase_imag "0010110101000" 
force -freeze sim:/C_Tgate/dataQubit.alpha.real "0010110101000"
force -freeze sim:/C_Tgate/dataQubit.alpha.imaginary "0000000000000"
force -freeze sim:/C_Tgate/dataQubit.beta.real "0010110101000"
force -freeze sim:/C_Tgate/dataQubit.beta.imaginary "0000000000000"
force -freeze sim:/C_Tgate/controlQubit.alpha.real "0000000000000"
force -freeze sim:/C_Tgate/controlQubit.alpha.imaginary "0000000000000"
force -freeze sim:/C_Tgate/controlQubit.beta.real "0100000000000"
force -freeze sim:/C_Tgate/controlQubit.beta.imaginary "0000000000000"
