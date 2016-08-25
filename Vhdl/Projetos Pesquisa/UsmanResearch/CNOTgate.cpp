#include "CNOTgate.h"

CNOTgate::CNOTgate(int qbitpos, int s, int numinputs, int dpos): QuantumGate(qbitpos, s)
{
	numInputs = numinputs;
	datapos = dpos;
	assert(numInputs <= size);
	assert(qbitpos != datapos);
	assert(qbitpos >= 0);
	assert(datapos >= 0);
	assert((qbitpos + numInputs-1) <= size);
	assert(numInputs > 1);
}

CNOTgate::~CNOTgate()
{
	delete transform;
}

void CNOTgate::printHeader(ofstream& fout)
{
	int outSize = (int) pow(2,size);
	fout << "LIBRARY IEEE;" << endl;
	fout << "USE IEEE.STD_LOGIC_1164.ALL;" << endl;
	fout << "USE WORK.QURECORDS.ALL;" << endl << endl;
	
	fout << "ENTITY CNOTGATE"<<size<<"pos"<<qbitnumber <<"pos"<<datapos << " IS" << endl;
	fout << "PORT( " << endl;
	fout << "\t input : IN entangledQubit("<< outSize-1 << " downto 0);" << endl;
	fout << "\t output : OUT entangledQubit("<<outSize-1<<" downto 0)" << endl;
	fout << "\t);" << endl;
	fout << "END CNOTGATE"<<size<<"pos"<<qbitnumber<<"pos" << datapos << ";"<<endl << endl << endl;
		fout << "ARCHITECTURE CNOTGATE"<<size<<"_structural OF CNOTGATE"<<size<<"pos"<<qbitnumber<<"pos"<<datapos<<
		" IS " << endl;
}

void CNOTgate::printVHDL()
{
	char c;
	int i,j;
	int baseSize = (int) pow(2,numInputs);
	string name = "CNOTgate";
	sprintf(&c,"%d",size);
	name += c;
	sprintf(&c,"%d",qbitnumber);
	name += "pos";
	name += c;
	sprintf(&c,"%d",datapos);
	name += "pos";
	name += c;
	name += ".vhd";
	int outSize = (int) pow(2,size);
	ofstream fout(name.c_str());
	matrix *cnot = new matrix(baseSize,baseSize);
	

	// Fixme : Use memzero()
	for (i = 0; i < baseSize; i++)
	{
		for (j = 0; j < baseSize; j++)
		{
			if (i == j)
			{
				cnot->buf[i][j] = 1;
			}
			else
			{
				cnot->buf[i][j] = 0;
			}
		}
	}
	cnot->buf[baseSize-2][baseSize-2] = 0;
	cnot->buf[baseSize-2][baseSize-1] = 1;
	cnot->buf[baseSize-1][baseSize-1] = 0;
	cnot->buf[baseSize-1][baseSize-2] = 1;
	if (numInputs != size)
	{
		createTransform2(cnot,qbitnumber, datapos, numInputs, size);
		
	}
	else
	{
		transform = new matrix(*cnot);
	}
	


	printHeader(fout);
	fout << "\t variable temp : STD_LOGIC_VECTOR(" << pow(2,size)-1 << " downto 0);" << endl;
	fout << "BEGIN" << endl;
	fout << "PROCESS(input)" << endl;
	fout << "BEGIN" << endl;
	fout << "\t temp := input;" << endl;
	for (i = 0; i < outSize; i++)
	{
		if (transform->buf[i][i] != 1)
		{
			for (j = 0; j < outSize; j++)
			{
				if (transform->buf[i][j] == 1)
				{
					fout << "\t temp("<<j<<") := input("<<i<<");" << endl;
					break;
				}
			}
		}
	}
	fout << "\t output <= temp;" << endl;
	fout << "END PROCESS;" << endl;
	fout << "END CNOTGATE"<<size<<"_structural;" << endl;
	fout.close();

}