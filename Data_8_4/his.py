#Analysis # distribution for the 3-D Rods
#Author: Yuding Ai
#Date: 2015 July 28

import numpy as np
import matplotlib.mlab as mlab
import matplotlib.pyplot as plt


def his():
	N1 = [] # Ver
	N2 = [] # Hor
	with open("dataplot.dat","r") as file:
		for line in file:
			words = line.split()
			n1 = float(words[2]) # Ver
			n2 = float(words[3]) # Hor
			N1.append(n1);
			N2.append(n2);




	fig1 = plt.figure()
	fig2 = plt.figure()
	fig4 = plt.figure()
	ax1 = fig1.add_subplot(111)
	ax2 = fig2.add_subplot(111)
	ax4 = fig4.add_subplot(111)
	numBins = 100

	ax1.set_title("Number Distribution for Vertical Rods")
	ax1.set_xlabel('Numbers')
	ax1.set_ylabel('Frequency')
	ax1.hist(N1,numBins,color = 'blue', alpha = 0.8, label='Vertical Rods')
	leg = ax1.legend()
	title = 'N1_#distribution.png'
	fig1.savefig(title, dpi=180, bbox_inches='tight')

	ax2.set_title("Number Distribution for Horizontal Rods")
	ax2.set_xlabel('Numbers')
	ax2.set_ylabel('Frequency')
	ax2.hist(N2,numBins,color = 'red', alpha = 0.8,label ='Horizontal Rods')
	leg = ax2.legend()
	title = 'N2_#distribution.png'
	fig2.savefig(title, dpi=180, bbox_inches='tight')


	ax4.set_title("Number Distribution for All")
	ax4.set_xlabel('Numbers')
	ax4.set_ylabel('Frequency')
	ax4.hist(N1,numBins,color = 'blue', alpha = 0.6,label = 'Vertical Rods')
	ax4.hist(N2,numBins,color = 'red', alpha = 0.6,label = 'Horizontal Rods')
	leg = ax4.legend()
	title = 'All_#distribution.png'
	fig4.savefig(title, dpi=180, bbox_inches='tight')



his()


