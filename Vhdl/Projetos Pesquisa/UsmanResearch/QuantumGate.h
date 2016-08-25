#ifndef QUANTUMGATE_H_
#define QUANTUMGATE_H_

#include "common.h"
#include "matrix.h"

using namespace std; 

class QuantumGate
{
public:
	matrix* transform;
	int qbitnumber; /* Qubit number */
	int size; /* Size of transform */
	int numInputs;
	QuantumGate(int, int);
	void createTransform(matrix*, int,int, int);
	void createTransform2(matrix* , int , int , int , int);
	virtual void printVHDL() = 0;
	~QuantumGate();
	
};

#endif