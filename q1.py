#!/usr/bin/python
import sys

sr=str(sys.argv[1])
b=int(sys.argv[2])
if b>=2 and b<=36:

	#print a
	l=len(sr)
	flag=0
	flag2=0
	if (sr[0]=='-'):
		flag=1
		sr1=sr[1:l]
	else:
		sr1=sr
	l=len(sr1)

	p=0
	while (sr1[p]=='0'):
		p=p+1
	sr=sr1[p:l]
	l=len(sr)
	if sr[0]=='-':
		print "invalid input"
	else:
	#print l

		su=0
		pro=1
		i=sr.find('.')
		#print i
		for do in range(0, l):
			if sr[do].isdigit():
				if (ord(sr[do])-48) >= b:
					flag2=1
			if sr[do].isalpha():
				if (ord(sr[do])-55) >= b:
					flag2=1
		if flag2==0:
			if i<0:
				for la in range(0, l):
					for j in range (la, l-1):
						pro=pro*b
					if sr[la].isdigit():
						su=su+(ord(sr[la])-48)*pro
					if sr[la].isalpha():
						su=su+(ord(sr[la])-55)*pro
					pro=1
				if flag==1:	
					print (0-su)
				else:
					print su
			
			else:
				for k in range(0, i):
					for j in range (k, i-1):
						pro=pro*b
					if sr[k].isdigit():
						su=su+(ord(sr[k])-48)*pro
					if sr[k].isalpha():
						su=su+(ord(sr[k])-55)*pro
					pro=1
			
				for k in range(i+1, l):
					for j in range (i, k):
						pro=pro*b
					if sr[k].isdigit():
						su=su+((ord(sr[k])-48)*1.0)/pro
					if sr[k].isalpha():
						su=su+((ord(sr[k])-55)*1.0)/pro
					pro=1
			
				if flag==1:	
					print "%.6f" % (0-su)
				else:
					print "%.6f" % (su)
		else:
			print "Invalid Input"
else:
	print "Invalid Base"
		
		
