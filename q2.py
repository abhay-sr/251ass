#!/usr/bin/python
import csv
import numpy as np
import matplotlib.pyplot as plt
import math

x_train=[[]]
y_train=[[]]
c=0
x=[[]]
y=[[]]
r1=0
r2=0
#step1

with open('train.csv') as csvfile:
	readCSV = csv.reader(csvfile, delimiter=',')
	for row in readCSV:
		c=c+1
		if c==1:
			continue
		else:
			x_train[0].append(float(row[0]))
			y_train[0].append(float(row[1]))
	new_x_train=np.column_stack((x_train[0],))
	new_y_train=np.column_stack((y_train[0],))
	#print x_train
	#print y_train
	x_train.insert(0,[])
	x[0]=x_train[1]
	y[0]=y_train[0]
	for i in range(1, c):
		x_train[0].append(1)
	x_train=np.column_stack((x_train[0],x_train[1]))
	y_train=np.column_stack((y_train[0],))
	
#step2

w=np.random.rand(2,1)
plt.plot(x[0],y[0],'r+')	

#step3

wt=w.T
wtx=[[]] 

for i in range(1, c):
	wtx[0].append(float(wt[0][0] + wt[0][1]*x_train[i-1][1]))

plt.plot(x[0],wtx[0],'g')
plt.show()
plt.close()
	
#step4

t1=np.matmul(x_train.T, x_train)
t1=np.linalg.inv(t1)
t2=np.matmul(x_train.T, y_train)
w_direct=np.matmul(t1,t2)

#step5

N=3
eta=0.00000001
for nepoch in range(1, N):
	for j in range(1, c):
		t3=(wt[0][0] + wt[0][1]*x_train[j-1][1])-y_train[j-1][0]
		w[0][0]=w[0][0]-eta*t3*1
		w[1][0]=w[1][0]-eta*t3*x_train[j-1][1]
		if j%100 == 0:
			plt.plot(x[0],y[0],'r+')
			wt=w.T
			wtx1=[[]]
			for i in range(1, c):
				wtx1[0].append(float(wt[0][0] + wt[0][1]*x_train[i-1][1]))
			#print wtx1
			plt.plot(x[0],wtx1[0],'g')
			
plt.show()
plt.close()
		
#step6
wt=w.T
wtx2=[[]]
for i in range(1, c):
	wtx2[0].append(float(wt[0][0] + wt[0][1]*x_train[i-1][1]))

plt.plot(x[0],y[0],'r+')
plt.plot(x[0],wtx2[0],'g')
plt.show()
plt.close()	

#step7

x_test=[[]]
y_test=[[]]
c2=0
with open('test.csv') as csvfile:
	readCSV2 = csv.reader(csvfile, delimiter=',')
	for row in readCSV2:
		c2=c2+1
		if c2==1:
			continue
		else:
			x_test[0].append(float(row[0]))
			y_test[0].append(float(row[1]))
	
	x_test.insert(0,[])
	for i in range(1, c2):
		x_test[0].append(1)
	x_test=np.column_stack((x_test[0],x_test[1]))
	y_test=np.column_stack((y_test[0],))

y_pred1=np.matmul(x_test,w)
r1=r1+np.sqrt(((y_pred1-y_test) ** 2).mean())
print r1


y_pred2=np.matmul(x_test,w_direct)
r2=r2+np.sqrt(((y_pred2-y_test) ** 2).mean())
print r2


	
	

