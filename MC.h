#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include "square.h"
#include "cells.h"
#include "hardrods.h"
#include <cstdlib>
#include <cmath>
#include <time.h>
#include <deque>
#include <array>
using namespace std;

#ifndef MC_H
#define MC_H

class MC
{
    private:
    	//data members;
        std::deque<HR> VRodlist; // the list storage the Vertical Rods;
        std::deque<HR> HRodlist; // the list storage the Horizantal Rods;
    	int r,c;
    	int length;
    	long int step;
    	double z; 
    	double nh,nv,dh,dv,ah,av;
        

    public:
    	MC(long int ST, int LEN,int C, int R, double Z);

    	// ********* Getters********//
        deque<HR> getVRodlist();
        deque<HR> getHRodlist();
    	double getTho() const;
    	double getQ() const;
    	double getAaccp() const;
    	double getDaccp() const;
        double getNh() const;
        double getNv() const;
        // ******** Setters ******//
        // void setRodlist(std::deque<HR> RodL);

    	// ******** Other Functianality *******//
        void Add(Cells &s,double &prob,double &probav, double &probah);
        void Del(Cells &s,double &prob,double &probdv, double &probdh,double &size);
    	void MCRUN(); 
        void Zvs_();

    	void plot(const deque<HR>& VRodlist, const deque<HR>& HRodlist);

};

#endif /* MC_H */