#include "CROTgate.h"

CROTgate::CROTgate(int qbitpos, int s, int numinputs, int dpos): QuantumGate(qbitpos, s)
{
	numInputs = numinputs;
	datapos = dpos;
	assert(numInputs <= size);
	assert(qbitpos != datapos);
	assert(qbitpos >= 0);
	assert(datapos >= 0);
	assert((qbitpos + numInputs -1) <= size);
	assert(numInputs > 1);
}

CROTgate::~CROTgate()
{
	delete transform;
}

void CROTgate::printHeader(ofstream& fout)
{
	int outSize = (int) pow(2,size);
	fout << "LIBRARY IEEE;" << endl;
	fout << "USE IEEE.STD_LOGIC_1164.ALL;" << endl;
	fout << "USE WORK.QURECORDS.ALL;" << endl << endl;
	
	fout << "ENTITY CROTGATE"<<size<<"pos"<<qbitnumber <<"pos" << datapos << " IS" << endl;
	fout << "PORT( " << endl;
	fout << "\t input : IN entangledQubit("<< outSize-1 << " downto 0);" << endl;
	fout << "\t phase : IN complexNum;" << endl;
	fout << "\t output : OUT entangledQubit("<<outSize-1<<" downto 0)" << endl;
	fout << "\t);" << endl;
	fout << "END CROTGATE"<<size<<"pos"<<qbitnumber<<"pos" << datapos <<";"<<endl << endl << endl;
	fout << "ARCHITECTURE CROTGATE"<<size<<"_structural OF CROTGATE"<<size<<"pos"<<qbitnumber<<"pos"<<datapos<<
		" IS " << endl;
	fout << "\t COMPONENT complexMult" << endl;
	fout << "\t PORT( X, Y : IN complexNum;" << endl;
	fout << "\t       outComplexMult : OUT complexNum);" << endl;
	fout << "\t END COMPONENT;" << endl;
	

}

void CROTgate::printVHDL()
{
	char c;
	int i,j;
	int baseSize = (int) pow(2,numInputs);
	string name = "CROTgate";
	sprintf(&c,"%d",size);
	name += c;
	sprintf(&c,"%d",qbitnumber);
	name += "pos";
	name += c;
	sprintf(&c,"%d",datapos);
	name += "pos";
	name += c;
	name += ".vhd";

	int count = 0;
	int outSize = (int) pow(2,size);
	ofstream fout(name.c_str());
	matrix *crot = new matrix(baseSize,baseSize);
	

	// Fixme : Use memzero()
	for (i = 0; i < baseSize; i++)
	{
		for (j = 0; j < baseSize; j++)
		{
			if (i == j)
			{
				crot->buf[i][j] = 1;
			}
			else
			{
				crot->buf[i][j] = 0;
			}
		}
	}
	//crot->buf[baseSize-2][baseSize-2] = 10.0;
	crot->buf[baseSize-1][baseSize-1] = 10;
	if (numInputs != size)
	{
		createTransform2(crot,qbitnumber,datapos, numInputs, size);
	}
	else
	{
		transform = new matrix(*crot);
	}
	
	printHeader(fout);
	
	fout << "BEGIN" << endl;

	for (i = 0; i < outSize; i++)
	{
		for (j = 0; j < outSize; j++)
		{
			if (transform->buf[i][j] != 0.0 && transform->buf[i][j] != 10)
			{
				fout << "\t output("<<i<<") <= input("<<j<<");" << endl;
				break;
			}
			else if (transform->buf[i][j] == 10)
			{
				fout << "\t mult"<<count<<" : complexMult PORT MAP" <<
					"(phase, input("<<i<<"), output("<<i<<"));" << endl;
				count++;
			}
		}
	}
	fout << "END CROTGATE"<<size<<"_structural;" << endl;
	fout.close();

}