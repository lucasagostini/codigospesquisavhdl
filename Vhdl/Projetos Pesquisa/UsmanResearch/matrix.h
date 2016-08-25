#ifndef MATRIX_H_
#define MATRIX_H_


#include "common.h"

class matrix
{
public:
	int row;
	int col;
	int **buf;

	matrix(int, int);
	matrix(matrix&);
	void kron(matrix*, matrix*);
	~matrix();

};


#endif