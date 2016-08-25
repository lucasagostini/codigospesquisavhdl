#ifndef EXPANDER_FINAL_H_
#define EXPANDER_FINAL_H_

#include "expander_generate.h"

void printHeader_expander_final(ofstream &fout, int numQubits, int outSize);
void create_expander_module(int numQubits);

#endif