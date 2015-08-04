# Author: Yuding Ai
# 2015-July-30
# Plot Zvsbetamiu
# perl -i.bak -pe "s/\t/' 'x(8-pos()%8)/eg" *.py
# echo z=5/ z=9/ z=10/ z=11/ z=14/ z=19/ z=20/ z=21/ | xargs -n 1 cp QvsR.py


import numpy as np
import matplotlib.pyplot as plt

Z = [] # Z
BM = [] # betamiu
TBM = [] #therotical result

with open("dataNvsZ.dat", "r") as file:
	for line in file:
		words = line.split()
		z = float(words[0]) 
		bm = float(words[5])  
		tbm = float(words[6])  

		Z.append(z);
		BM.append(bm);
		TBM.append(tbm);

fig1 = plt.figure()
ax1 = fig1.add_subplot(111)

ax1.set_title("Runs VS N1")    
ax1.set_xlabel('Z')
ax1.set_ylabel('BetaMu')
ax1.plot(Z,BM, c='b', label='SimBetaMu')
ax1.plot(Z,TBM, c='r', label='CalBetaMu')
leg = ax1.legend(loc = 2)
title = 'Z_VS_Betamu.png'
fig1.savefig(title, dpi=180, bbox_inches='tight')


