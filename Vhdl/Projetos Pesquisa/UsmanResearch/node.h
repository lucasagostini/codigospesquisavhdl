#ifndef NODE_H_
#define NODE_H_

#include <string>



class node
{
public:
	int level;
	int orient;
	std::string NodeName;
	std::string Input;
	std::string Output;
	node* left;
	node* right;

	node();
	~node();
};
#endif