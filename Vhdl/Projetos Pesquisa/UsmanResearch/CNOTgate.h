#ifndef CNOTGATE_H_
#define CNOTGATE_H_

#include "QuantumGate.h"

class CNOTgate : public QuantumGate
{
public:
	int numInputs;
	int datapos;
public:	
	void printVHDL();
	void printHeader(ofstream& );
	CNOTgate(int, int, int, int);
	~CNOTgate();
};

#endif