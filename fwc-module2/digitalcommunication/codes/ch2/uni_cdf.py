#Importing numpy, scipy, mpmath and pyplot
import numpy as np
import matplotlib.pyplot as plt

#if using termux
#import subprocess
#import shlex
#end if

x = np.linspace(-2,2,30)    #points on the x axis
simlen = int(1e6)           #number of samples
err = []                    #declaring probability list
pdf = []
randvar = np.loadtxt('../rvsample/uni.dat', dtype='double')
print(randvar)
for i in range(0,30):
	err_ind = np.nonzero(randvar < x[i]) #checking probability condition
	err_n = np.size(err_ind) #computing the probabilitye
	err.append(err_n/simlen) #storing the probability values in a list

y=np.piecewise(x,[x<0,(x>=0)&(x<=1),x>1],[0,lambda x:x,1])
plt.scatter(x.T,err)   #plotting the CDF
plt.plot(x,y)
plt.grid()          #creating the grid
plt.xlabel('$x$')
plt.ylabel('$F_X(x)$')
plt.legend(["Numerical","Theory"])

plt.savefig('../../figs/chapter2/uni_cdf.pdf')
plt.savefig('../../figs/chapter2/uni_cdf.png')

#if using termux
#subprocess.run(shlex.split("termux-open ../../figs/chapter2/uni_cdf.pdf"))
#else
plt.show() #opening the plot window
