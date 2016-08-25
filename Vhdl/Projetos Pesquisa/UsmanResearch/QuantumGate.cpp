#include "QuantumGate.h"

QuantumGate::QuantumGate(int qbitpos, int s)
{
	qbitnumber = qbitpos;
	size = s;
	assert(qbitnumber < size);
	transform = new matrix(size,size);
}


void QuantumGate::createTransform(matrix* base, int pos,int numInputs, int kronsize)
{
	matrix* I = new matrix(2,2);
	matrix* temp = new matrix(2,2);
	matrix* result; 
	int start = 1;
	I->buf[0][0] = 1;
	I->buf[0][1] = 0;
	I->buf[1][0] = 0;
	I->buf[1][1] = 1;
	if (pos != 0)
	{
		result = new matrix(2,2);
		result = new matrix(*I);
	}
	else
	{
		start = numInputs;
		result = new matrix(base->row,base->col);
		result = new matrix(*base);
	}
	
	for (int i = start; i < kronsize; i++)
	{
		if (i != pos)
		{
			temp->kron(result,I);
			result = new matrix(*temp);
		}
		else
		{
			i = i+numInputs-1;
			temp->kron(result,base);
			result = new matrix(*temp);
		}
	}
	transform = new matrix(*result);
}

void QuantumGate::createTransform2(matrix* base, int pos, int datapos, int numInputs, int kronsize)
{
	matrix* I = new matrix(2,2);
	matrix* temp = new matrix(2,2);
	matrix* result; 
	int start = 1;
	int i;
	I->buf[0][0] = 1;
	I->buf[0][1] = 0;
	I->buf[1][0] = 0;
	I->buf[1][1] = 1;
	
	// Adjust base
	result = new matrix(*base);
	for (i = 0; i < abs(pos-datapos)-1; i++)
	{
		temp->kron(I,result);
		result = new matrix(*temp);
	}
	base = new matrix(*result);
	
	if (pos != 0)
	{
		result = new matrix(2,2);
		result = new matrix(*I);
	}
	else
	{
		start = abs(pos-datapos)+1;
		result = new matrix(base->row,base->col);
		result = new matrix(*base);
	}

	for (i = start; i < kronsize; i++)
	{
		if (i != pos)
		{
			temp->kron(result,I);
			result = new matrix(*temp);
		}
		else
		{
			i = i+abs(pos-datapos);
			temp->kron(result,base);
			result = new matrix(*temp);
		}
	}
	transform = new matrix(*result);
}

QuantumGate::~QuantumGate()
{
	delete transform;
}