import matplotlib.pyplot as plt
import pandas as pd

population_ages = [22,24,26,25,34,35,67,32,12,37,19,56,77,45,76,34,46,39]
ids = [x for x in range(len(population_ages))]

plt.bar(ids,population_ages)
plt.xlabel('id')
plt.ylabel('age')
plt.legend()
plt.show()