#ifndef XGATE_H_
#define XGATE_H_

#include "QuantumGate.h"

class Xgate : public QuantumGate
{
public:
	void printVHDL();
	void printHeader(ofstream& );
	Xgate(int, int);
	~Xgate();
};

#endif