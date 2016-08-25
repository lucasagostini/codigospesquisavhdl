#include "interface.h"
#include <string>


void printMatrix(matrix* m)
{
	for (int i = 0; i < m->row; i++)
	{
		for (int j = 0; j < m->col; j++)
		{
			cout << m->buf[i][j] << " ";
		}
		cout << endl;
	}
}

int main()
{
 
	CNOTgate *cg;
	cg = new CNOTgate(0,4,2,1);
	cg->printVHDL();
	printMatrix(cg->transform);
	return 0;
}