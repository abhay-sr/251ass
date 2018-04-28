#pvaluethon

f1=open("plot_t1.out","r")
f2=open("plot_t2.out","r")
f3=open("plot_t3.out","r")
f4=open("plot_t4.out","r")
f5=open("plot_t5.out","r")
f6=open("speedup.out","w")
f7=open("app.out","r")

l1=[]
l2=[]
l3=[]
l4=[]
l5=[]
li=[]
tmp1=[]
tmp2=[]
tmp3=[]
tmp4=[]
tmp5=[]

for line in f1.readlines():
	for value in line.split():
		l1.append(float(value))
	
#print l1[0]
#print l1[1]

for line in f2.readlines():
	for value in line.split():
		l2.append(float(value))
	
for line in f3.readlines():
	for value in line.split():
		l3.append(float(value))

for line in f4.readlines():
	for value in line.split():
		l4.append(float(value))
	
for line in f5.readlines():
	for value in line.split():
		l5.append(float(value))
		
for line in f7.readlines():
		for value in line.split():
			li.append(float(value))
	#print li[0]
	#print li[1]
	
for j in range(0,8,2):
	su1=(l1[j+1]*1.0)/l1[j+1]
	su2=(l2[j+1]*1.0)/l1[j+1]
	su3=(l3[j+1]*1.0)/l1[j+1]
	su4=(l4[j+1]*1.0)/l1[j+1]
	su5=(l5[j+1]*1.0)/l1[j+1]
	#f6.write("%d %.4f %.4f %.4f %.4f %.4f\n"%(l1[j], su1, su2, su3, su4, su5))
	
	avg1=0
	avg2=0
	avg3=0
	avg4=0
	avg5=0
	v1=0
	v2=0
	v3=0
	v4=0
	v5=0
	#print l1[j]
	if l1[j]==1000:
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

		for i in range(0,100):
			v1=v1 + ((avg1/tmp1[i]) - su1)**2
			v2=v2 + ((avg2/tmp2[i]) - su2)**2
			v3=v3 + ((avg3/tmp3[i]) - su3)**2
			v4=v4 + ((avg4/tmp4[i]) - su4)**2
			v5=v5 + ((avg5/tmp5[i]) - su5)**2
		v1=v1/100.0
		v2=v2/100.0
		v3=v3/100.0
		v4=v4/100.0
		v5=v5/100.0
		f6.write("%d %.4f %.4f %.4f %.4f %.4f %.4f %.4f %.4f %.4f %.4f\n"%(1000, su1, su2, su3, su4, su5, v1, v2, v3, v4, v5))
		
		v1=0
		v2=0
		v3=0
		v4=0
		v5=0
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
	if l1[j]==10000:
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

		for i in range(0,100):
			v1=v1 + ((avg1/tmp1[i]) - su1)**2
			v2=v2 + ((avg2/tmp2[i]) - su2)**2
			v3=v3 + ((avg3/tmp3[i]) - su3)**2
			v4=v4 + ((avg4/tmp4[i]) - su4)**2
			v5=v5 + ((avg5/tmp5[i]) - su5)**2
		v1=v1/100.0
		v2=v2/100.0
		v3=v3/100.0
		v4=v4/100.0
		v5=v5/100.0
		f6.write("%d %.4f %.4f %.4f %.4f %.4f %.4f %.4f %.4f %.4f %.4f\n"%(10000, su1, su2, su3, su4, su5, v1, v2, v3, v4, v5))
		
		v1=0
		v2=0
		v3=0
		v4=0
		v5=0
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
		
	if l1[j]==100000:
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

		for i in range(0,100):
			v1=v1 + ((avg1/tmp1[i]) - su1)**2
			v2=v2 + ((avg2/tmp2[i]) - su2)**2
			v3=v3 + ((avg3/tmp3[i]) - su3)**2
			v4=v4 + ((avg4/tmp4[i]) - su4)**2
			v5=v5 + ((avg5/tmp5[i]) - su5)**2
		v1=v1/100.0
		v2=v2/100.0
		v3=v3/100.0
		v4=v4/100.0
		v5=v5/100.0
		
		f6.write("%d %.4f %.4f %.4f %.4f %.4f %.4f %.4f %.4f %.4f %.4f\n"%(100000, su1, su2, su3, su4, su5, v1, v2, v3, v4, v5))
		
		v1=0
		v2=0
		v3=0
		v4=0
		v5=0
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
		
	if l1[j]==1000000:
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

		for i in range(0,100):
			v1=v1 + ((avg1/tmp1[i]) - su1)**2
			v2=v2 + ((avg2/tmp2[i]) - su2)**2
			v3=v3 + ((avg3/tmp3[i]) - su3)**2
			v4=v4 + ((avg4/tmp4[i]) - su4)**2
			v5=v5 + ((avg5/tmp5[i]) - su5)**2
		v1=v1/100.0
		v2=v2/100.0
		v3=v3/100.0
		v4=v4/100.0
		v5=v5/100.0
		f6.write("%d %.4f %.4f %.4f %.4f %.4f %.4f %.4f %.4f %.4f %.4f\n"%(1000000, su1, su2, su3, su4, su5, v1, v2, v3, v4, v5))
	
f1.close()
f2.close()
f3.close()
f4.close()
f5.close()
f6.close()
