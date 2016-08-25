#ifndef EXPANDER_H_
#define EXPANDER_H_

#include "common.h"
#include "node.h"

using namespace std;

void multTree(int numQubits, int N, int orient, node* head,string output);
void printHeader_expander(ofstream& fout, int numQubits, int outSize);
void printTree (ofstream& fout, node* head);
void expander(int numQubits);
#endif