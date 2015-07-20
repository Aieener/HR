/*
* hardrods.cpp
* 2-D lattice gas
* Author: Yuding Ai & Eelco Empting
* Date: 2015.06.08
*/

#include "hardrods.h"
#include <iostream>
#include <vector>
#include <string>

HR::HR()
{
	X = 0;
	Y= 0;
	Length = 1;
	Orientation = 0;
}

HR::HR(int x, int y, int l, int o)
{
	X = x;
	Y= y;
	Length = l;
	Orientation = o;
}

int HR::getX() const
{
	return X;
}

int HR::getY() const
{
	return Y;
}

int HR::getLength() const
{
	return Length;
}

int HR::getOrientation() const
{
	return Orientation;
}

