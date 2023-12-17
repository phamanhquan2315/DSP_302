import matplotlib.pyplot as plt
import pandas

population_ages = [22,24,26,25,34,35,67,32,12,37,19,56,77,45,76,34,46,39,102,53,55,87,36,76,114,110,100,120,130,125,96]

bins = [0,10,20,30,40,50,60,70,80,90,100,110,120,130]

plt.hist(population_ages,bins, histtype='bar',label = 'age')

plt.legend()
plt.show()