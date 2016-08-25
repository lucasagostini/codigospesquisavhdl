#include "expander_merge.h"



void printHeader_expander_merge(ofstream& fout, int entangledSize, int outSize)
{
	fout << "LIBRARY IEEE;" << endl;
	fout << "USE IEEE.STD_LOGIC_1164.ALL;" << endl;
	fout << "USE WORK.QURECORDS.ALL;" << endl << endl;
	
	fout << "ENTITY EXPANDER_MERGE"<<entangledSize<< " IS" << endl;
	fout << "PORT( " << endl;
	fout << "\t input1 : IN qubit;" << endl;
	fout << "\t input2 : IN entangledQubit("<<entangledSize-1<<" downto 0);" << endl;
	fout << "\t output : OUT entangledQubit("<<outSize-1<<" downto 0)" << endl;
	fout << "\t);" << endl;
	fout << "END EXPANDER_MERGE"<<entangledSize<<";"<<endl << endl << endl;
	fout << "ARCHITECTURE EXPANDER_MERGE"<<entangledSize<<"_structural OF EXPANDER_MERGE"<<entangledSize<<
		" IS " << endl;
	
	fout << "\t COMPONENT complexMult" << endl;
	fout << "\t PORT( X, Y : IN complexNum;" << endl;
	fout << "\t       outComplexMult : OUT complexNum);" << endl;
	fout << "\t END COMPONENT;" << endl;
	//fout << "\t SIGNAL alpha0 : complexNum;" << endl;
	//fout << "\t SIGNAL beta0 : complexNum;" << endl;
}

void expander_merge(int entangledSize)
{
	string num;
	string output = "alpha0";
	char c;
	int i;
	int outindex = 0;
	
	
	
	sprintf(&c,"%d",entangledSize);
	num = "expander_merge";
	num += c;
	
	num += ".vhd";
	ofstream fout(num.c_str());
	int outSize = 2*entangledSize;
	
	if (fout == NULL)
	{
		cout << "Unable to create output file" << endl;
	}
	printHeader_expander_merge(fout, entangledSize,outSize);
	fout << "\t BEGIN" << endl;
	for (i = 0; i < entangledSize; i++)
	{
		fout << "\t cmult" << outindex << " : complexMult PORT MAP(input2("<<i<<"), input1.alpha, output("
			<<outindex++<<"));" << endl;
		fout << "\t cmult" << outindex << " : complexMult PORT MAP(input2("<<i<<"), input1.beta, output("
			<<outindex++<<"));" << endl;
		
	}
	fout << "END EXPANDER_MERGE" << entangledSize << "_structural;" << endl;
	fout.close();
}

	
