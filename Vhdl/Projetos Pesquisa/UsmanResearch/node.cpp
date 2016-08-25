#include "node.h"

node::node()
{
	NodeName = "";
	level = 0;
	orient = 0;
	Input= "";
	Output = "";
	//Output2 = "";
	left = NULL;
	right = NULL;
}

node::~node()
{
	delete left;
	delete right;
}