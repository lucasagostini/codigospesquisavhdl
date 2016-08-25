#ifndef HGATE_H_
#define HGATE_H_

#include "QuantumGate.h"

class Hgate : public QuantumGate
{
public:
	void printVHDL();
	void printHeader(ofstream& );
	Hgate(int, int);
	~Hgate();
};

#endif