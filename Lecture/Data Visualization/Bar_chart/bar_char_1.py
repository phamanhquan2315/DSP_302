import matplotlib.pyplot as plt
import matplotlib as mtl
import pandas as pd

x = [2,4,6,8,10,12]
y = [4,8,12,16,20,24]

x2 = [1,3,5,7,9,11]
y2 = [7,8,9,10,11,12]

plt.bar(x,y,label = 'bars1', color = 'black')
plt.bar(x2,y2,label = 'bars2',color = 'green')

plt.legend()
plt.xlabel('x')
plt.ylabel('y')
plt.show()

