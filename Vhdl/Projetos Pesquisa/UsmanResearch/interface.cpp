#include "interface.h"
#include <string>

void GateGenerator()
{
	string gatecode;
	int pos, size, numinputs;
	int pos2;
	int choice;
	int size1, size2;
	numinputs = -1;
	
	cout << "Gate generator requires entry of parameters in the following manner:" << endl;
	cout << "\t GATECODE POS SIZE (NUMINPUTS)" << endl << endl;
	cout << "\t POS -- Qubit position in the system top (pos = 0)" << endl;
	cout << "\t SIZE -- Size of basis" << endl;
	cout << "\t NUMINPUTS -- (For multiple input gate) Number of inputs" << endl << endl;
	
	while (1)
	{
		cout << "1. Create Single Input Gate" << endl;
		cout << "2. Create Multiple Input Gate" << endl;
		cout << "3. Expander Module" << endl;
		cout << "4. Return to Main Menu" << endl;
		cout << ">> ";
		cin >> choice;

		while (choice <1 || choice > 4)
		{
			cin.clear();
			cout << "Wrong menu choice" << endl;
			cout << ">> ";
			cin >> choice;
		}
		
		if (choice == 1)
		{
			while (1)
			{
				cout << "Enter Gate Parameters" << endl;
				cout << ">> ";
				cin >> gatecode >> pos >> size;

				if (gatecode.string::compare("wh") == 0)
				{
					Hgate* hg = new Hgate(pos,size);
					hg->printVHDL();
					break;
				}
				else if (gatecode.string::compare("not") == 0)
				{
					Xgate* xg = new Xgate(pos,size);
					xg->printVHDL();
					break;
				}
				else
				{
					cout << "Invalid Input" << endl;
					cin.clear();
				}
			}
	
		}
		if (choice == 2)
		{
			while (1)
			{
				cout << "Enter Gate Parameters" << endl;
				cout << ">> ";
				cin >> gatecode >> pos >> pos2 >> size >> numinputs;

				if (gatecode.string::compare("cnot") == 0)
				{
					CNOTgate* cg = new CNOTgate(pos,size,numinputs,pos2);
					cg->printVHDL();
					break;
				}
				else if(gatecode.string::compare("crot") == 0)
				{
					CROTgate* crg = new CROTgate(pos,size,numinputs,pos2);
					crg->printVHDL();
					break;
				}
				else
				{
					cout << "Invalid Input" << endl;
					cin.clear();
				}
			}
	
		}
	
		else if (choice == 3)
		{
			cout << "1. Type 1 Expander" << endl;
			cout << "2. Type 2 Expander" << endl;

			cout << ">> ";
			cin >> choice;
			while (!cin && choice > 2)
			{
				cin.clear();
				cout << "Invalid input" << endl;
				cout << ">> Enter choice: ";
				cin >> choice;
			}
			if (choice == 1)
			{
				cout << ">> Enter number of input qubits: ";
				cin >> size;
				while (!cin && size > 0)
				{	
					cin.clear();
					cout << "Invalid input" << endl;
					cout << ">> Enter number of input qubits: ";
					cin >> size;
				}
				create_expander_module(size);
			}
			else if (choice == 2)
			{
				cout << " Enter size1 size2" << endl;
				cout << ">>";
				cin >> size1 >> size2;
				if (size1 > size2)
				{
					create_expander_module2(size1,size2);
				}
				else
				{
					create_expander_module2(size2,size1);
				}
			}

		}
		else if (choice == 4)
		{
			return;
		}
	}

}

void HelpMenu()
{
	int choice;

	cout << "Gate generator requires entry of parameters in the following manner:" << endl;
	cout << "\t GATECODE POS SIZE (NUMINPUTS)" << endl << endl;
	cout << "\t POS -- Qubit position in the system from top (pos = 0)" << endl;
	cout << "\t SIZE -- Size of basis" << endl;
	cout << "\t NUMINPUTS -- (Enter 1 for single input gate) Number of inputs" << endl;
	while (1)
	{
		cout << "1. Gate Codes" << endl;
		cout << "2. Return to Main Menu" << endl;
	
		cout << ">> ";
		cin >> choice;
		while (choice < 1 || choice > 2)
		{
			cin.clear();
			cout << "Wrong menu choice" << endl;
			cout << ">> ";
			cin >> choice;
		}

		if (choice == 1) /* print gate codes */
		{
			cout << "\t Controlled NOT Gate -- cnot" << endl;
			cout << "\t Controlled Rotation Gate -- crot" << endl;
			cout << "\t Walsh-Hadamard Gate -- wh" << endl;
			cout << "\t NOT (X) Gate -- not" << endl;
		}	
		else if (choice == 2)
		{
			return;
		}
	}
		
}

void MainMenu()
{
	int choice;
	
	while(1)
	{
		cout << "1. Gate Generator" << endl;
		cout << "2. Help" << endl;
		cout << "3. Exit" << endl;
		cout << ">> ";
		cin >> choice;
		
		while (choice < 1 || choice > 3)
		{
			cin.clear();
			cout << "Wrong menu choice" << endl;
			cout << ">> ";
			cin >> choice;
		}
		if (choice == 1)
		{
			GateGenerator();
		}
		else if (choice == 2)
		{
			HelpMenu();
		}
		else if (choice == 3)
		{
			return;
		}
	}
}

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
	MainMenu();
	
	return 0;	
}