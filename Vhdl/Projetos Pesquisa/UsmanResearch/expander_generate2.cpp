#include "expander_generate2.h"


void printHeader_expander_generate2(ofstream& fout, int size1,int size2)
{
	fout << "LIBRARY IEEE;" << endl;
	fout << "USE IEEE.STD_LOGIC_1164.ALL;" << endl;
	fout << "USE WORK.QURECORDS.ALL;" << endl << endl;
	
	fout << "ENTITY EXPANDER_GENERATE2_" << size2 << " IS" << endl;
	fout << "PORT( " << endl;
	fout << "\t input1 : IN complexNum;" << endl;
	fout << "\t input2 : IN entangledQubit("<< size2-1 << " downto 0);" << endl;
	fout << "\t output : OUT entangledQubit(" << size2-1 << " downto 0)" << endl;
	fout << "\t);" << endl;
	fout << "END EXPANDER_GENERATE2_" << size2 << ";"<<endl << endl << endl;
	fout << "ARCHITECTURE EXPANDER_GENERATE2_" << size2 << "_structural OF EXPANDER_GENERATE2_" << size2 <<
		" IS " << endl;
	
	fout << "\t COMPONENT complexMult" << endl;
	fout << "\t PORT( X, Y : IN complexNum;" << endl;
	fout << "\t       outComplexMult : OUT complexNum);" << endl;
	fout << "\t END COMPONENT;" << endl;
	//fout << "\t SIGNAL alpha0 : complexNum;" << endl;
	//fout << "\t SIGNAL beta0 : complexNum;" << endl;
}

void expander_generate2(int size1, int size2)
{
	
	char c;
	int i;
	string fname = "expander_generate2_";
	sprintf(&c,"%d",size2);
	fname += c;
	fname += ".vhd";
	ofstream fout(fname.c_str());

	printHeader_expander_generate2(fout, size1,size2);
	
	
	fout << "\t BEGIN" << endl;
	
	for (i = 0; i < size2; i++)
	{
		fout << "\t mult"<<i<<" : complexMult PORT MAP(input2("<<i<<"), input1, output("<<i<<"));" << endl;
	}
	
	fout << "END EXPANDER_GENERATE2_"<<size2<<"_structural;"<<endl;
	fout.close();
}