#include "Hgate.h"

Hgate::Hgate(int qbitpos, int s): QuantumGate(qbitpos, s)
{
	numInputs = 1;
}

Hgate::~Hgate()
{
	delete transform;
}

void Hgate::printHeader(ofstream& fout)
{
	int outSize = (int) pow(2,size);
	fout << "LIBRARY IEEE;" << endl;
	fout << "USE IEEE.STD_LOGIC_1164.ALL;" << endl;
	fout << "USE WORK.QURECORDS.ALL;" << endl << endl;
	
	fout << "ENTITY HADAMARDgate"<<size<<"pos"<<qbitnumber <<" IS" << endl;
	fout << "PORT( " << endl;
	fout << "\t input : IN entangledQubit("<< outSize-1 << " downto 0);" << endl;
	fout << "\t root2 : IN STD_LOGIC_VECTOR(N-1 downto 0);" << endl;
	fout << "\t output : OUT entangledQubit("<<outSize-1<<" downto 0)" << endl;
	fout << "\t);" << endl;
	fout << "END HADAMARDgate"<<size<<"pos"<<qbitnumber<<";"<<endl << endl << endl;
		fout << "ARCHITECTURE HADAMARDgate"<<size<<"_structural OF HADAMARDgate"<<size<<"pos"<<qbitnumber<<
		" IS " << endl;
	fout << "\tCOMPONENT adder" << endl;
	fout << "\t PORT(	A,B	: IN STD_LOGIC_VECTOR(N-1 downto 0);" <<endl;
	fout << "\t SUM	: OUT STD_LOGIC_VECTOR(N-1 downto 0));" << endl;
	fout << "\t END COMPONENT;" << endl;

	fout << "\t COMPONENT mult" << endl;
	fout << "\t PORT(	in1,in2		: IN STD_LOGIC_VECTOR(N-1 downto 0);" << endl;
	fout << "\t outMult		: OUT STD_LOGIC_VECTOR(N-1 downto 0)" << endl;
	fout <<  ");" << endl;
	fout << "\t END COMPONENT;" << endl;

	for (int i = 0; i < transform->row; i++)
	{
		fout << "\t SIGNAL mult"<<i<<"00 : STD_LOGIC_VECTOR(N-1 downto 0);" << endl;
		fout << "\t SIGNAL mult"<<i<<"01 : STD_LOGIC_VECTOR(N-1 downto 0);" << endl;
		fout << "\t SIGNAL mult"<<i<<"10 : STD_LOGIC_VECTOR(N-1 downto 0);" << endl;
		fout << "\t SIGNAL mult"<<i<<"11 : STD_LOGIC_VECTOR(N-1 downto 0);" << endl;
	}

	fout << "SIGNAL negroot2 : STD_LOGIC_VECTOR(N-1 downto 0);" << endl;
}

void Hgate::printVHDL()
{
	char c;
	int count = 0;
	int instcount = 0;

	
	string name = "HADAMARDgate";
	sprintf(&c,"%d",size);
	name += c;
	sprintf(&c,"%d",qbitnumber);
	name += "pos";
	name += c;
	name += ".vhd";
	int outSize = (int) pow(2,size);
	ofstream fout(name.c_str());
	matrix *H = new matrix(2,2);
	H->buf[0][0] = 2;
	H->buf[0][1] = 2;
	H->buf[1][0] = 2;
	H->buf[1][1] = -2;
	
	createTransform(H,qbitnumber,numInputs,size);
	
	printHeader(fout);
	
	fout << "BEGIN" << endl;
	
	fout << "negroot2(N-2 downto 0) <= root2(N-2 downto 0);" << endl;
	fout << "negroot2(N-1) <= '1';" << endl;

	for (int i = 0; i < outSize; i++)
	{
		count = 0;
		for (int j = 0; j < outSize; j++)
		{
			if (transform->buf[i][j] > 0)
			{
				fout << "\t mult" <<instcount <<" : mult PORT MAP(" <<
					"root2, input("<<j<<").real, mult"<<i<<count<<"0);"<< endl;
				instcount++;
				fout << "\t mult" <<instcount <<" : mult PORT MAP(" <<
					"root2, input("<<j<<").imaginary, mult"<<i<<count<<"1);"<< endl;
				instcount++;
				count++;
			}
			else if (transform->buf[i][j] < 0)
			{
				fout << "\t mult" <<instcount <<" : mult PORT MAP(" <<
					"negroot2, input("<<j<<").real, mult"<<i<<count<<"0);"<< endl;
				instcount++;
				fout << "\t mult" <<instcount <<" : mult PORT MAP(" <<
					"negroot2, input("<<j<<").imaginary, mult"<<i<<count<<"1);"<< endl;
				instcount++;
				count++;
			}
			if (count == 2) 
			{
				fout << "\t adder"<<instcount<<" : adder PORT MAP(" <<
					"mult"<<i<<"00, mult"<<i<<"10, output("<<i<<").real);" << endl;
				instcount++;
				fout << "\t adder"<<instcount<<" : adder PORT MAP(" <<
					"mult"<<i<<"01, mult"<<i<<"11, output("<<i<<").imaginary);" << endl;
				instcount++;
				break;
			}
		}
	}
	fout << "END HADAMARDgate"<<size<<"_structural;" << endl;
	fout.close();

}