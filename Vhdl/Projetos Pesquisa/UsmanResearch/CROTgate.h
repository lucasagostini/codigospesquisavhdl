#ifndef CROTGATE_H_
#define CROTGATE_H_

#include "QuantumGate.h"

class CROTgate : public QuantumGate
{
public:
	int numInputs;
	int datapos;
public:	
	void printVHDL();
	void printHeader(ofstream& );
	CROTgate(int, int, int,int);
	~CROTgate();
};

#endif