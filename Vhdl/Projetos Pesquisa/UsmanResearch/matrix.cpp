#include "matrix.h"

matrix::matrix(int r, int c)
{
	row = r;
	col = r;
	buf = new int*[row];
	for (int i = 0; i < col; i++)
	{
		*(buf+i) = new int[col];
	}
}

matrix::matrix(matrix& m)
{
	int i, j;
	row = m.row;
	col = m.col;
	buf = new int*[row];
	for (i = 0; i < col; i++)
	{
		*(buf+i) = new int[col];
	}
	// fixme : replace by memcpy 
	for (i = 0; i < row; i++)
	{
		for (j = 0; j < col; j++)
		{
			buf[i][j] = m.buf[i][j];
		}
	}
}

void matrix::kron(matrix* basetransform, matrix* transform2)
{
	int i,j;
	int a,b;
	int count1 = 0;
	int count2 = 0;
	int outsize = basetransform->row*transform2->row; 
	row = outsize;
	col = outsize;
	buf = new int*[row];
	for (i = 0; i < col; i++)
	{
		*(buf+i) = new int[col];
	}

	for (i = 0; i < basetransform->row ; i++)
	{
		for (j = 0; j < basetransform->col; j++)
		{
			for (a = 0; a < transform2->row; a++)
			{
				for (b = 0; b < transform2->col; b++)
				{
					buf[count1+a][count2+b] = basetransform->buf[i][j] * transform2->buf[a][b];
				}
			}
			count2 += transform2->col;
		}
		count2 = 0;
		count1 += transform2->row;
	}

}

matrix::~matrix()
{
	for (int i = 0; i < col; i++)
	{
		delete[] *(buf+i);
	}
	delete[] *buf;
}
