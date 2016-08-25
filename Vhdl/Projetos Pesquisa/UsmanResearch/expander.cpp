#include "expander.h"

static index = 0;
static outindex = 0;
void printHeader_expander(ofstream& fout, int numQubits, int outSize)
{
	fout << "LIBRARY IEEE;" << endl;
	fout << "USE IEEE.STD_LOGIC_1164.ALL;" << endl;
	fout << "USE WORK.QURECORDS.ALL;" << endl << endl;
	
	fout << "ENTITY EXPANDER"<<numQubits<< " IS" << endl;
	fout << "PORT( " << endl;
	fout << "\t input : IN quArray("<< numQubits-1 << " downto 0);" << endl;
	fout << "\t output : OUT entangledQubit("<<outSize-1<<" downto 0)" << endl;
	fout << "\t);" << endl;
	fout << "END EXPANDER"<<numQubits<<";"<<endl << endl << endl;
	fout << "ARCHITECTURE EXPANDER"<<numQubits<<"_structural OF EXPANDER"<<numQubits<<
		" IS " << endl;
	
	fout << "\t COMPONENT complexMult" << endl;
	fout << "\t PORT( X, Y : IN complexNum;" << endl;
	fout << "\t       outComplexMult : OUT complexNum);" << endl;
	fout << "\t END COMPONENT;" << endl;
	//fout << "\t SIGNAL alpha0 : complexNum;" << endl;
	//fout << "\t SIGNAL beta0 : complexNum;" << endl;
}

void printTree (ofstream& fout, node* head, int numQubits, int N)
{
	if (N != 0 && N != numQubits-1)
	{
		fout << "\t\t cmult"<<index <<": complexMult PORT MAP("<<head->Input<<", "
			<<head->NodeName<<", "<<head->Output<<");" << endl;
		
	}
	else if (N == numQubits - 1)
	{
		fout << "\t\t cmult"<<index <<": complexMult PORT MAP("<<head->Input<<", "
			<<head->NodeName<<", "<<"output("<<outindex<<"));" << endl;
		outindex++;
	}
	if (head->left != NULL)
	{
		index++;
		printTree(fout,head->left,numQubits,N+1);
	}
	if (head->right != NULL)
	{
		index++;
		printTree(fout,head->right,numQubits,N+1);
	}
	return;
}

void printSignal(ofstream& fout, node* head, int numQubits, int N)
{
	if (N != numQubits)
	{
		fout << "\t SIGNAL " << head->Output << " : complexNum;" << endl;
	}
	if (head->left != NULL)
	{
		printSignal(fout,head->left, numQubits, N+1);
	}
	if (head->right != NULL)
	{
		printSignal(fout,head->right, numQubits, N+1);
	}
	return;
}

void expander(int numQubits)
{
	string num;
	string output = "alpha0";
	char c;
	sprintf(&c,"%d",numQubits);
	num = "expander";
	num += c;
	
	num += ".vhd";
	ofstream fout(num.c_str());
	int outSize = (int) pow(2,numQubits);
	node *head = new node;
	if (fout == NULL)
	{
		cout << "Unable to create output file" << endl;
	}
	
	printHeader_expander(fout, numQubits, outSize); /* Write entity description to file */
	multTree(numQubits,0,0, head,output);
	printSignal(fout, head, numQubits,1);
	multTree(numQubits,0,1,head,"beta0");
	printSignal(fout, head, numQubits,1);
	
	fout << "\t BEGIN" << endl;
	fout << "\t alpha0 <= input(0).alpha;" << endl;
	fout << "\t beta0 <= input(0).beta;" << endl;

	multTree(numQubits,0,0, head,output);
	printTree(fout, head, numQubits,0); /* Translate tree in to VHDL port maps */
	/* Repeat for beta tree */
	
	multTree(numQubits,0,1,head,"beta0");
	printTree(fout, head, numQubits,0);
	fout << "END EXPANDER" << numQubits << "_structural;" << endl;
	fout.close();
}

	
void multTree(int numQubits, int N, int orient, node* head,string output)
{
	char c;
	sprintf(&c,"%d",N);
	if (N == numQubits)
	{
		return;
	}
	else
	{	
		if (orient == 0)
		{
			head->NodeName = "input(";
			head->NodeName += c;
			head->NodeName += ").alpha";
		}
		else
		{	
			head->NodeName = "input(";
			head->NodeName += c;
			head->NodeName += ").beta";
		}
		
		head->orient = orient;
		head->level = N;
		
		if (N == 0)
		{
			head->Input = head->NodeName;
			head->Output = output;
		}
		else
		{
			if (orient == 0)
			{
				head->Input = output;
				//head->Input+= "alpha";
				//head->Input += c;
				
				head->Output = output; 
				head->Output += "alpha";
				head->Output += c;
			}
			else
			{
				head->Input = output;
				//head->Input+= "beta";
				//head->Input += c;
				head->Output = output; 
				head->Output += "beta"; 
				head->Output += c;
			}
		}
		
		if ((N+1) != numQubits)
		{
			head->left = new node;
			head->right = new node;
		}
		multTree(numQubits,N+1,0,head->left,head->Output);
		multTree(numQubits,N+1,1,head->right,head->Output);
	}
}