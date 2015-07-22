#Author: Yuding Ai
#2015-July-15
#Visualize 3D hard rod

from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
import matplotlib.patches as patches
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(111,aspect='equal')
a=0

# ================================ Draw Ver Rods ===========================
with open("2dplotv.txt", "r") as file:
    for line in file:
        a= a+1
xpos = np.zeros(a)
ypos = np.zeros(a)

i = 0
with open("2dplotv.txt", "r") as file:
    for line in file:
        words = line.split()
        wx = words[0]
        wy = words[1]
        xpos[i] = wx
        ypos[i] = wy
        i = i+1

dx = np.ones(a)
dy = np.ones(a)

for y in range(0,a):
    dy[y] = 8
    if a != 0:
        ax.add_patch(
            patches.Rectangle(
                (xpos[y], ypos[y]),
                dx[y],
                dy[y],
            )
        )


# # ================================ Draw Hor Rods ===========================
with open("2dploth.txt", "r") as file:
    for line in file:
        a= a+1
xpos = np.zeros(a)
ypos = np.zeros(a)

i = 0
with open("2dploth.txt", "r") as file:
    for line in file:
        words = line.split()
        wx = words[0]
        wy = words[1]
        xpos[i] = wx
        ypos[i] = wy
        i = i+1

dx = np.ones(a)
dy = np.ones(a)

for y in range(0,a):
    dx[y] = 8
    if a != 0:
        ax.add_patch(
            patches.Rectangle(
                (xpos[y], ypos[y]),
                dx[y],
                dy[y],
                facecolor="red"
            )

        )

# # ================================ Draw Up Rods ===========================
# a3=0
# with open("3dplotu.txt", "r") as file:
#     for line in file:
#         a3= a3+1

# xpos3 = np.zeros(a3)
# ypos3 = np.zeros(a3)
# zpos3 = np.zeros(a3)

# i = 0
# with open("3dplotu.txt", "r") as file:
#     for line in file:
#         words = line.split()
#         wx = words[0]
#         wy = words[1]
#         wz = words[2]
#         xpos3[i] = wx
#         ypos3[i] = wy
#         zpos3[i] = wz
#         i = i+1

# dx3 = np.ones(a3)
# dy3 = np.ones(a3)
# dz3 = np.ones(a3)

# for z in range(0,a3):
#     dz3[z] = 8
# if a3 != 0:
#     ax.bar3d(xpos3, ypos3, zpos3, dx3, dy3, dz3, color='g',alpha=0.2)

fig.savefig('2dplot.png', dpi=90, bbox_inches='tight')
plt.axis('equal')
plt.show()