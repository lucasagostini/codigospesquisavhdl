#include "expander_final.h"


void printHeader_expander_final(ofstream& fout, int numQubits, int outSize)
{
	fout << "LIBRARY IEEE;" << endl;
	fout << "USE IEEE.STD_LOGIC_1164.ALL;" << endl;
	fout << "USE IEEE.STD_LOGIC_ARITH.ALL;" << endl;
	fout << "USE IEEE.STD_LOGIC_UNSIGNED.ALL;" << endl;
	fout << "USE WORK.QURECORDS.ALL;" << endl << endl;
	
	fout << "ENTITY EXPANDER"<<numQubits<< " IS" << endl;
	fout << "PORT( " << endl;
	fout << "\t input : IN quArray("<<numQubits-1<<" downto 0);" << endl;
	fout << "\t clock, reset : IN STD_LOGIC;" << endl;
	fout << "\t output : OUT entangledQubit("<<outSize-1<<" downto 0)" << endl;
	fout << "\t);" << endl;
	fout << "END EXPANDER"<<numQubits<<";"<<endl << endl << endl;
	fout << "ARCHITECTURE EXPANDER"<<numQubits<<"_structural OF EXPANDER"<<numQubits<<
		" IS " << endl;
	
	fout << "COMPONENT EXPANDER_GENERATE"<<numQubits<< endl;
	fout << "PORT( " << endl;
	fout << "\t input : IN entangledQubit("<< numQubits-1 << " downto 0);" << endl;
	fout << "\t output : OUT complexNum" << endl;
	fout << "\t);" << endl;
	fout << "END COMPONENT;"<<endl << endl << endl;

	fout << "\t COMPONENT EXPANDER_CONTROL" << endl;
	fout << "\t\t GENERIC (numQubits : INTEGER);" << endl;
	fout << "\t\t PORT (input : IN quArray(numQubits-1 downto 0);" << endl;
	fout << "\t\t clock : IN STD_LOGIC;" << endl;
	fout << "\t\t reset : IN STD_LOGIC;" << endl;
	fout << "\t\t done : OUT STD_LOGIC;" << endl;
	fout << "\t\t index : OUT STD_LOGIC_VECTOR(numQubits-1 downto 0);" << endl;
	fout << "\t\t output : OUT entangledQubit(numQubits-1 downto 0));"<< endl;
	fout << "\t\t END COMPONENT;" << endl;

	fout << "\t\t SIGNAL done : STD_LOGIC;" << endl;
	fout << "\t\t SIGNAL index : STD_LOGIC_VECTOR("<< numQubits-1<<" downto 0);" << endl;
	fout << "\t\t SIGNAL outcontrol : entangledQubit("<<numQubits-1<<" downto 0);" << endl;
	fout << "\t\t SIGNAL outmult : complexNum;" << endl;
}	

void create_expander_module(int numQubits)
{
	int outSize = pow(2,numQubits);
	char c;
	sprintf(&c, "%d", numQubits);
	string fname = "expander";
	fname += c;
	fname += ".vhd";
	ofstream fout(fname.c_str());

	expander_generate(numQubits);
	printHeader_expander_final(fout, numQubits,outSize);
	fout << "BEGIN" << endl;
	fout << "\t control : expander_control " << endl;
	fout << "\t\t GENERIC MAP("<<numQubits<<")" << endl;
	fout << "\t\t PORT MAP(input, clock, reset, done, index, outcontrol);" << endl;
	
	fout << "\t multipliers: expander_generate" << numQubits <<
		" PORT MAP(outcontrol, outmult);" << endl;
	
	fout << "\t output(CONV_INTEGER(index)) <= outmult;" << endl;

	fout << "END EXPANDER"<<numQubits<<"_structural;"<< endl;

	fout.close();
}