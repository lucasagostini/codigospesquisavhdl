#include "expander_final2.h"


void printHeader_expander_final2(ofstream& fout, int size1, int size2, int outSize)
{
	fout << "LIBRARY IEEE;" << endl;
	fout << "USE IEEE.STD_LOGIC_1164.ALL;" << endl;
	fout << "USE IEEE.STD_LOGIC_ARITH.ALL;" << endl;
	fout << "USE IEEE.STD_LOGIC_UNSIGNED.ALL;" << endl;
	fout << "USE WORK.QURECORDS.ALL;" << endl << endl;
	
	fout << "ENTITY EXPANDER2_"<<size1 << "_" << size2 << " IS" << endl;
	fout << "PORT( " << endl;
	fout << "\t input1 : IN entangledqubit("<<size1-1<<" downto 0);" << endl;
	fout << "\t input2 : IN entangledqubit("<<size2-1<<" downto 0);" << endl;
	fout << "\t clock, reset : IN STD_LOGIC;" << endl;
	fout << "\t output : OUT entangledQubit("<<outSize-1<<" downto 0)" << endl;
	fout << "\t);" << endl;
	fout << "END EXPANDER2_"<<size1 << "_" << size2 <<";"<<endl << endl << endl;
	fout << "ARCHITECTURE EXPANDER2_"<<size1 << "_" << size2<<"_structural OF EXPANDER2_"<<size1<<"_"<<size2<<
		" IS " << endl;
	
	fout << "COMPONENT EXPANDER_GENERATE2_"<<size2<< endl;
	fout << "PORT( " << endl;
	fout << "\t input1 : complexNum;" << endl;
	fout << "\t input2 : IN entangledQubit("<< size2-1 << " downto 0);" << endl;
	fout << "\t output : OUT entangledQubit("<< size2-1 << " downto 0)" << endl;
	fout << "\t);" << endl;
	fout << "END COMPONENT;"<<endl << endl << endl;

	fout << "\t COMPONENT EXPANDER_CONTROL2" << endl;
	fout << "\t\t GENERIC (m : INTEGER;" << endl;
	fout << "\t\t n : INTEGER;" << endl;
    fout << "\t\t total : INTEGER);" << endl;
	fout << "\t\t PORT (input : IN entangledqubit(m-1 downto 0);" << endl;
	fout <<	"\t\t clock : IN STD_LOGIC;" << endl;
	fout <<	"reset : IN STD_LOGIC;" << endl;
	fout <<	"done : OUT STD_LOGIC;" << endl;
	fout << "index : OUT STD_LOGIC_VECTOR(total-1 downto 0);" << endl;
	fout <<	"output : OUT complexNum" << endl;
	fout <<	 ");" << endl;
	fout << "\t\t END COMPONENT;" << endl;

	fout << "\t\t SIGNAL done : STD_LOGIC;" << endl;
	fout << "\t\t SIGNAL index : STD_LOGIC_VECTOR("<< size1-1<<" downto 0);" << endl;
	fout << "\t\t SIGNAL outcontrol : complexNum;" << endl;
	
}	

void create_expander_module2(int size1,int size2)
{
	int outSize = size1*size2;
	int controlcount;
	int count = 0;
	int i;
	char c;
	sprintf(&c, "%d", size1);
	string fname = "expander2_";
	fname += c;
	fname += '_';
	sprintf(&c, "%d", size2);
	fname += c;
	fname += ".vhd";
	ofstream fout(fname.c_str());
	controlcount = (int) (log10(size1*size2)/log10(2)) + 1;
	
	expander_generate2(size1,size2);
	printHeader_expander_final2(fout, size1,size2,outSize);

	fout << "\t\t SIGNAL outmult : entangledqubit(" <<size2-1 << " downto 0);" << endl;
	fout << "BEGIN" << endl;
	fout << "\t control : expander_control2 " << endl;
	fout << "\t\t GENERIC MAP("<<size1<<","<<size2<<","<<controlcount <<")" << endl;
	fout << "\t\t PORT MAP(input1, clock, reset, done, index, outcontrol);" << endl;
	
	fout << "\t multipliers: expander_generate2_" << size2 <<
		" PORT MAP(outcontrol,input2, outmult);" << endl;
	fout << "\tPROCESS (outmult,index)" << endl;
	fout << "\tBEGIN" << endl;
	for (i = 0; i < size2; i++)
	{
		fout << "\t\t output(CONV_INTEGER(index)+"<<count<<") <= outmult("<<i<<");" << endl;
		count += size1;
	}
	fout << "\t END PROCESS;" << endl;
	fout << "END EXPANDER2_"<<size1 << "_" << size2<<"_structural;"<< endl;

	fout.close();
}