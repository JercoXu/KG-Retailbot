# This is a simple illustration of the three robotic tasks in our experiment

# Author: Ke Xu, TU Delft


import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
from matplotlib.animation import FuncAnimation
from svgpathtools import svg2paths
from svgpath2mpl import parse_path


fig, ax = plt.subplots()
# fig2, bx = plt.subplots()
x = np.array([0, 0.25, 1.1, 1.1])
y = np.array([0, -0.85, -0.4, 0.6])
color = ['#6A539D', '#538d9d', '#919d53', '#9d5c53']
product = ['delivery_location', 'milk', 'hageslag', 'tea_box']
for i in range(len(x)):
    plt.scatter(x[i], y[i], c=color[i], s=50)
plt.xlim(-0.05, 1.15)
plt.ylim(-3.5, 0.75)
plt.legend(product, fontsize=10)

mymodel = np.poly1d(np.polyfit(x, y, 50))

myline = np.arange(0, 1.105, 0.001)


def animate(i):
    global iterat
    robot_path, attributes = svg2paths('robot-57.svg')
    robot_marker = parse_path(attributes[0]['d'])
    robot_marker.vertices -= robot_marker.vertices.mean(axis=0)
    robot_marker = robot_marker.transformed(mpl.transforms.Affine2D().rotate_deg(180))
    robot_marker = robot_marker.transformed(mpl.transforms.Affine2D().scale(-1, 1))


    # update the data
    if len(ax.lines) == 2:
        ax.lines.pop(1)
    if len(ax.texts) > 0:
        ax.texts.pop(0)
    ax.plot(myline[i], mymodel(myline)[i], marker=robot_marker, markersize=20, c='#ac90d1' )
    ax.text(myline[i], mymodel(myline)[i], ' ('+str(round(myline[i], 3))+','+str(round(mymodel(myline)[i], 3))+'+)', fontsize=10)

    if i == 0.25 / 0.001:
        plt.pause()
    return ax


ani = FuncAnimation(
    fig, animate, frames=myline.size, interval=50, blit=False, save_count=500)
draw_line = np.arange(0, 1.105, 0.001)
ax.plot(draw_line, mymodel(draw_line), c='#90b8d1')
plt.show()

