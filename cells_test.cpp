/*cells_test.cpp
*/
#include <cassert>
#include "cells.h"
#include "square.h"
#include "hardrods.h"

#include <iostream>
#include <sstream>
#include <fstream>
using namespace std;

void test_basic()
{
	Square s(2,5);
	Cells c(2,8);
	// cout<< c<< endl;
	// // cout << s.toString()<<endl;
	// cout << c.getSquare(0,9).toString()<<endl;
	Cells c2(50,50);
	cout << c2.Initial(10,10,0.9).size()<<endl;
	cout << c2 << endl;




}

int main()
{
	test_basic();
	return 0;
}