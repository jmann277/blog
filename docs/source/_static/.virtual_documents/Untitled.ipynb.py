import numpy as np
import matplotlib.pyplot as plt


graph of mutual information of correlated gaussians


fig, ax = plt.figure(), plt.axes()

c_XY = np.arange(-.99, .99, .01)
I = - np.log(1 -c_XY**2)/2
ax.plot(c_XY, I)

ax.set(
    title='''
        Mutual Information Between Two Correlated Gaussians
        ''',
    xlabel='Pearson Correlation Coefficient',
    ylabel='Mutual Information'
);

fig.savefig('mutual_information_of_correlated_gaussians')




