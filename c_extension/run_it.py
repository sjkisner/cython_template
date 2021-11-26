
import numpy as np
import cy_cext as cy

N=10
x=np.arange(N)
y=cy.cython_function(x)

for i in range(N):
    print("i={}\tin={}\tout={}".format(i,x[i],y[i]))


