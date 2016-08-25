#include "expander_generate.h"


void printHeader_expander_generate(ofstream& fout, int numQubits)
{
	fout << "LIBRARY IEEE;" << endl;
	fout << "USE IEEE.STD_LOGIC_1164.ALL;" << endl;
	fout << "USE WORK.QURECORDS.ALL;" << endl << endl;
	
	fout << "ENTITY EXPANDER_GENERATE"<<numQubits<< " IS" << endl;
	fout << "PORT( " << endl;
	fout << "\t input : IN entangledQubit("<< numQubits-1 << " downto 0);" << endl;
	fout << "\t output : OUT complexNum" << endl;
	fout << "\t);" << endl;
	fout << "END EXPANDER_GENERATE"<<numQubits<<";"<<endl << endl << endl;
	fout << "ARCHITECTURE EXPANDER_GENERATE"<<numQubits<<"_structural OF EXPANDER_GENERATE"<<numQubits<<
		" IS " << endl;
	
	fout << "\t COMPONENT complexMult" << endl;
	fout << "\t PORT( X, Y : IN complexNum;" << endl;
	fout << "\t       outComplexMult : OUT complexNum);" << endl;
	fout << "\t END COMPONENT;" << endl;
	//fout << "\t SIGNAL alpha0 : complexNum;" << endl;
	//fout << "\t SIGNAL beta0 : complexNum;" << endl;
}

void expander_generate(int numQubits)
{
	int n = numQubits - 1;
	char c;
	int i;
	string fname = "expander_generate";
	sprintf(&c,"%d",numQubits);
	fname += c;
	fname += ".vhd";
	ofstream fout(fname.c_str());

	printHeader_expander_generate(fout, numQubits);
	fout << "\t SIGNAL outmult0 : complexNum;" << endl;
	for (i = 1; i < numQubits-1; i++)
	{
		fout << "\t SIGNAL outmult" << i << " : complexNum;" << endl;
	}
	
	fout << "\t BEGIN" << endl;
	fout << "\t mult0 : complexMult PORT MAP(input(0),input(1),outmult0);" << endl;
	for (i = 1; i < numQubits-1; i++)
	{
		fout << "\t mult"<<i<<" : complexMult PORT MAP(input("<<i+1<<"), outmult"<<i-1
			<<", outmult"<<i<<");" << endl;
	}
	fout << "\t output <= outmult"<<i-1<<";"<<endl;
	fout << "END EXPANDER_GENERATE"<<numQubits<<"_structural;"<<endl;
	fout.close();
}