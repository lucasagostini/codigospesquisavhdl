#include "Xgate.h"

Xgate::Xgate(int qbitpos, int s) : QuantumGate(qbitpos, s)
{
	numInputs = 1;
}

Xgate::~Xgate()
{
	delete transform;
}

void Xgate::printHeader(ofstream& fout)
{
	int outSize = (int) pow(2,size);
	fout << "LIBRARY IEEE;" << endl;
	fout << "USE IEEE.STD_LOGIC_1164.ALL;" << endl;
	fout << "USE WORK.QURECORDS.ALL;" << endl << endl;
	
	fout << "ENTITY XGATE"<<size<<"pos"<<qbitnumber <<" IS" << endl;
	fout << "PORT( " << endl;
	fout << "\t input : IN entangledQubit("<< outSize-1 << " downto 0);" << endl;
	fout << "\t output : OUT entangledQubit("<<outSize-1<<" downto 0)" << endl;
	fout << "\t);" << endl;
	fout << "END XGATE"<<size<<"pos"<<qbitnumber<<";"<<endl << endl << endl;
		fout << "ARCHITECTURE XGATE"<<size<<"_structural OF XGATE"<<size<<"pos"<<qbitnumber<<
		" IS " << endl;
}

void Xgate::printVHDL()
{
	char c;
	
	string name = "Xgate";
	sprintf(&c,"%d",size);
	name += c;
	sprintf(&c,"%d",qbitnumber);
	name += "pos";
	name += c;
	name += ".vhd";
	int outSize = (int) pow(2,size);
	ofstream fout(name.c_str());
	matrix *X = new matrix(2,2);
	X->buf[0][0] = 0;
	X->buf[0][1] = 1;
	X->buf[1][0] = 1;
	X->buf[1][1] = 0;
	
	createTransform(X,qbitnumber,numInputs,size);
	
	printHeader(fout);
	
	fout << "BEGIN" << endl;

	for (int i = 0; i < outSize; i++)
	{
		for (int j = 0; j < outSize; j++)
		{
			if (transform->buf[i][j] != 0)
			{
				fout << "\t output("<<j<<") <= input("<<i<<");" << endl;
				break;
			}
		}
	}
	fout << "END XGATE"<<size<<"_structural;" << endl;
	fout.close();

}