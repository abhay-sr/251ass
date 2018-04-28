#python

f6=open("app.out","r")
f1=open("plot_t1.out","w")
f2=open("plot_t2.out","w")
f3=open("plot_t3.out","w")
f4=open("plot_t4.out","w")
f5=open("plot_t5.out","w")

li=[]
tmp1=[]
tmp2=[]
tmp3=[]
tmp4=[]
tmp5=[]

avg1=0
avg2=0
avg3=0
avg4=0
avg5=0


for line in f6.readlines():
		for value in line.split():
			li.append(float(value))
			
for i in range(0,1500,3):
		
		if li[i+1] == 1 :
			tmp1.append(li[i+2])
				#print li[i+2]
		if li[i+1]==2 :
			tmp2.append(li[i+2])
		if li[i+1]==4 :
			tmp3.append(li[i+2])
		if li[i+1]==8 :
			tmp4.append(li[i+2])	
		if li[i+1]==16 :
			tmp5.append(li[i+2])
		
for i in range(0,100):
	avg1 = avg1 + tmp1[i]
avg1=avg1/100.0
for i in range(0,100):
	avg2 = avg2 + tmp2[i]
avg2=avg2/100.0
for i in range(0,100):
	avg3 = avg3 + tmp3[i]
avg3=avg3/100.0
for i in range(0,100):
	avg4 = avg4 + tmp4[i]
avg4=avg4/100.0
for i in range(0,100):
	avg5 = avg5 + tmp5[i]
avg5=avg5/100.0
f1.write("%d %.4f\n"%(1000, avg1))
f2.write("%d %.4f\n"%(1000, avg2))
f3.write("%d %.4f\n"%(1000, avg3))
f4.write("%d %.4f\n"%(1000, avg4))
f5.write("%d %.4f\n"%(1000, avg5))

del tmp1[:]
del tmp2[:]
del tmp3[:]
del tmp4[:]
del tmp5[:]
avg1=0
avg2=0
avg3=0
avg4=0
avg5=0

for i in range(1500,3000,3):
		
		if li[i+1] == 1 :
			tmp1.append(li[i+2])
				#print li[i+2]
		if li[i+1]==2 :
			tmp2.append(li[i+2])
		if li[i+1]==4 :
			tmp3.append(li[i+2])
		if li[i+1]==8 :
			tmp4.append(li[i+2])	
		if li[i+1]==16 :
			tmp5.append(li[i+2])
		
for i in range(0,100):
	avg1 = avg1 + tmp1[i]
avg1=avg1/100.0
for i in range(0,100):
	avg2 = avg2 + tmp2[i]
avg2=avg2/100.0
for i in range(0,100):
	avg3 = avg3 + tmp3[i]
avg3=avg3/100.0
for i in range(0,100):
	avg4 = avg4 + tmp4[i]
avg4=avg4/100.0
for i in range(0,100):
	avg5 = avg5 + tmp5[i]
avg5=avg5/100.0
f1.write("%d %.4f\n"%(10000, avg1))
f2.write("%d %.4f\n"%(10000, avg2))
f3.write("%d %.4f\n"%(10000, avg3))
f4.write("%d %.4f\n"%(10000, avg4))
f5.write("%d %.4f\n"%(10000, avg5))

del tmp1[:]
del tmp2[:]
del tmp3[:]
del tmp4[:]
del tmp5[:]
avg1=0
avg2=0
avg3=0
avg4=0
avg5=0

for i in range(3000,4500,3):
		
		if li[i+1] == 1 :
			tmp1.append(li[i+2])
				#print li[i+2]
		if li[i+1]==2 :
			tmp2.append(li[i+2])
		if li[i+1]==4 :
			tmp3.append(li[i+2])
		if li[i+1]==8 :
			tmp4.append(li[i+2])	
		if li[i+1]==16 :
			tmp5.append(li[i+2])
		
for i in range(0,100):
	avg1 = avg1 + tmp1[i]
avg1=avg1/100.0
for i in range(0,100):
	avg2 = avg2 + tmp2[i]
avg2=avg2/100.0
for i in range(0,100):
	avg3 = avg3 + tmp3[i]
avg3=avg3/100.0
for i in range(0,100):
	avg4 = avg4 + tmp4[i]
avg4=avg4/100.0
for i in range(0,100):
	avg5 = avg5 + tmp5[i]
avg5=avg5/100.0
f1.write("%d %.4f\n"%(100000, avg1))
f2.write("%d %.4f\n"%(100000, avg2))
f3.write("%d %.4f\n"%(100000, avg3))
f4.write("%d %.4f\n"%(100000, avg4))
f5.write("%d %.4f\n"%(100000, avg5))

del tmp1[:]
del tmp2[:]
del tmp3[:]
del tmp4[:]
del tmp5[:]
avg1=0
avg2=0
avg3=0
avg4=0
avg5=0

for i in range(4500,6000,3):
		
		if li[i+1] == 1 :
			tmp1.append(li[i+2])
				#print li[i+2]
		if li[i+1]==2 :
			tmp2.append(li[i+2])
		if li[i+1]==4 :
			tmp3.append(li[i+2])
		if li[i+1]==8 :
			tmp4.append(li[i+2])	
		if li[i+1]==16 :
			tmp5.append(li[i+2])
		
for i in range(0,100):
	avg1 = avg1 + tmp1[i]
avg1=avg1/100.0
for i in range(0,100):
	avg2 = avg2 + tmp2[i]
avg2=avg2/100.0
for i in range(0,100):
	avg3 = avg3 + tmp3[i]
avg3=avg3/100.0
for i in range(0,100):
	avg4 = avg4 + tmp4[i]
avg4=avg4/100.0
for i in range(0,100):
	avg5 = avg5 + tmp5[i]
avg5=avg5/100.0

f1.write("%d %.4f\n"%(1000000, avg1))
f2.write("%d %.4f\n"%(1000000, avg2))
f3.write("%d %.4f\n"%(1000000, avg3))
f4.write("%d %.4f\n"%(1000000, avg4))
f5.write("%d %.4f\n"%(1000000, avg5))
