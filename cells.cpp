// cells.cpp
// 2-D lattice gas
// Author: Yuding Ai
// Date: 2015.06.05


#include "cells.h"
extern const string EXC_INVALID_DESC = "Not a valid description of cells!";

Cells::Cells()
{
	N0 = 1;
	N1 = 1;
	size = 1;
	//initialize my cell
	arr = new Square[1];
	arr[0] = Square();
}


Cells::Cells(int X, int Y)
{
	N0 = X; // length
	N1 = Y; // width
    size = (N0)*(N1);
    arr = new Square[size];

	//initialize my cell
	for(int i = 0; i < size; i++)
	{
		arr[i] = Square();
	}
}

/*
*  Destructor
*/
Cells::~Cells()
{   
	if(arr)
	{
		delete [] arr;
	}
}

// *** Getters *** //
int Cells::getN0() const
{
	return N0;
}
int Cells::getN1() const
{
	return N1;
}

int Cells::getSize() const
{
	return (N0)*(N1);
}


// *** Other Functionality *** //

int Cells::getIdx( int x, int y) const
{
	return  x + N0*y;
}

Square& Cells::getSquare( int x, int y) const
{
	if (x >= N0 || y >= N1)
	{
		throw EXC_INVALID_DESC;
	}

	int idx = getIdx(x,y);
	// cout << idx<<endl;
	return arr[idx];
}


// int main()
// {
// 	Cells k;
// 	Cells w(2,2,2); // we can't take square(2,2,2)!!!
// 	int size =  w.getSize() ;
// 	cout <<size<<endl;
// 	// w.getSquare(1,1,1).setStatus(1);
// 	int a = w.getSquare(0,0,0).getStatus();
// 	int b = w.getSquare(1,0,0).getStatus();
// 	int c = w.getSquare(0,1,0).getStatus();
// 	int d = w.getSquare(0,0,1).getStatus();
// 	int e = w.getSquare(1,0,1).getStatus();
// 	int f = w.getSquare(1,1,0).getStatus();
// 	int g = w.getSquare(0,1,1).getStatus();
// 	int h = w.getSquare(1,1,1).getStatus();
// 	// assert(w.getSquare(1,1,1).isEmpty());

//     cout << a << " " << b << " "<< c << " "<< d<< " "<< e<< " "<< f<< " "<< g<< " "<< h <<endl;
// 	return 0;
// }