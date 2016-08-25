#include "common.h"
#include "node.h"
#include "expander.h"
#include "expander_merge.h"
#include "QuantumGate.h"
#include "Xgate.h"
#include "Hgate.h"
#include "CNOTgate.h"
#include "CROTgate.h"

void printMatrix(matrix* m)
{
	int i,j;

	for (i = 0; i < m->row; i++)
	{
		for (j = 0; j < m->col; j++)
		{
			cout << m->buf[i][j] << " ";
		}
		cout << endl;
	}
}

int main()
{
	//expander(10);
	//expander_merge(4);
	matrix *test = new matrix(2,2);
	matrix *I;
	matrix *temp = new matrix(2,2);
	Xgate* xg = new Xgate(1,2);
	matrix *X = new matrix(2,2);
	X->buf[0][0] = 0.0;
	X->buf[0][1] = 1.0;
	X->buf[1][0] = 1.0;
	X->buf[1][1] = 0.0;
	test->buf[0][0] = 1.0;
	test->buf[0][1] = 0.0;
	test->buf[1][0] = 0.0;
	test->buf[1][1] = 1.0;
	//printMatrix(test);
	I = new matrix(*test);
	//printMatrix(I);
	//temp->kron(I,X);
	//printMatrix(temp);
	//xg->createTransform(X,xg->qbitnumber,xg->size+1);
	xg->printVHDL();

	Hgate* hg = new Hgate(1,3);
	hg->printVHDL();
	CNOTgate* cg = new CNOTgate(1,3,2);
	cg->printVHDL();
	printMatrix(cg->transform);
	printMatrix(xg->transform);
	CROTgate* crg = new CROTgate(0,3,2);
	crg->printVHDL();
	printMatrix(crg->transform);
	//printMatrix(hg->transform);
	return 0;
}
