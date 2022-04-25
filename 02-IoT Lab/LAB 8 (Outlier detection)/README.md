```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
plt.style.use('ggplot') # ggplot - a data visualisation package
from faker import Faker # Faker - library which generates fake data for us

fake = Faker()
# To make the results are reproducible

Faker.seed(4321)
name_list = []
fake = Faker()

for _ in range(100):
  name_list.append(fake.name())
  # len(name_list) 
# print(name_list)
np.random.seed(7)

salary_list = []

for _ in range(100):
  sal = np.random.randint(1000,3000)
  salary_list.append(sal)
  # len(salary) 

# CREATE A DATAFRAME 
salary_df = pd.DataFrame(
    {'person':name_list,
     'salary':salary_list})

# DISPLAY THE DATAFRAME
print(salary_df.head())


# Next is creating the outlier of our own
# Purposefully generating two anomalies
salary_df.at[16,'salary'] = 30
salary_df.at[70,'salary'] = 50
print(salary_df['salary'].plot(kind='box'))

# the black circle represents the anomaly


# THE OUTLIER IS ALSO PROVEN USING THE HISTOGRAM

ax = salary_df['salary'].plot(kind='hist')
ax.set_xlabel('Salary')
ax


print('min salary '+str(salary_df['salary'].min()))
print('max salary '+str(salary_df['salary'].max()))


# CREATING A RAW SALARY DATA

salary_raw = salary_df['salary'].values
# print(salary_raw)
salary_raw = salary_raw.reshape(-1,1)
# print(salary_raw)
salary_raw = salary_raw.astype('float64')


# TO DO OUTLIER REDUCTION, K-MEANS IS CALLED

from scipy.cluster.vq import vq, kmeans # vq - vection quantisation

codebook, distortion = kmeans(salary_raw,4)
print('codebook=',codebook,',distortion=',distortion)


groups,cdist = vq(salary_raw,codebook)
plt.scatter(salary_raw, np.arange(100), c=groups) #Return evenly spaced values within a given interval
plt.xlabel('Salary')
plt.ylabel('Indices')
plt.title('19bee0167 - Swarup Tripathy')
plt.show()
```
