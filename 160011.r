sample <- 50000
X <- rexp(sample, 0.2)
x <- data.frame(X = seq(1, sample , 1), Y = sort(X))
plot(x,xlab="Position",ylab="values",main="Scatter_Plot for Exp distribution")
##


list <- split(X,seq(1,500,1))
##

pdata1 <- rep(0, 100);
pdata2 <- rep(0, 100);
pdata3 <- rep(0, 100);
pdata4 <- rep(0, 100);
pdata5 <- rep(0, 100);

for(i in 1:100){
  val=round(X[i], 0);
  if(val <= 100){
    pdata1[val] = pdata1[val] + 1/ 100; 
  }
}
for(i in 101:200){
  val=round(X[i], 0);
  if(val <= 100){
    pdata2[val] = pdata2[val] + 1/ 100; 
  }
}
for(i in 201:300){
  val=round(X[i], 0);
  if(val <= 100){
    pdata3[val] = pdata3[val] + 1/ 100; 
  }
}
for(i in 301:400){
  val=round(X[i], 0);
  if(val <= 100){
    pdata4[val] = pdata4[val] + 1/ 100; 
  }
}
for(i in 401:500){
  val=round(X[i], 0);
  if(val <= 100){
    pdata5[val] = pdata5[val] + 1/ 100; 
  }
}

xcols1 <- c(0:99)
xcols2 <- c(0:99)
xcols3 <- c(0:99)
xcols4 <- c(0:99)
xcols5 <- c(0:99)

str(pdata1)
str(xcols1)

plot(xcols1, pdata1, "l", xlab="list1", ylab="f(X)", main="pdf")

str(pdata2)
str(xcols2)

plot(xcols2, pdata2, "l", xlab="list2", ylab="f(X)", main="pdf")

str(pdata3)
str(xcols3)

plot(xcols3, pdata3, "l", xlab="list3", ylab="f(X)", main="pdf")

str(pdata4)
str(xcols4)

plot(xcols4, pdata4, "l", xlab="list4", ylab="f(X)", main="pdf")

str(pdata5)
str(xcols5)

plot(xcols5, pdata5, "l", xlab="list5", ylab="f(X)", main="pdf")

cdata1 <- rep(0, 100)

cdata1[1] <- pdata1[1]

for(i in 2:100){
  cdata1[i] = cdata1[i-1] + pdata1[i]
}

plot(xcols1, cdata1, "o", col="blue", xlab="list1", ylab="F(X)", main="cdf")

cdata2 <- rep(0, 100)

cdata2[1] <- pdata2[1]

for(i in 2:100){
  cdata2[i] = cdata2[i-1] + pdata2[i]
}

plot(xcols2, cdata2, "o", col="red", xlab="list2", ylab="F(X)", main="cdf")

cdata3 <- rep(0, 100)

cdata3[1] <- pdata3[1]

for(i in 2:100){
  cdata3[i] = cdata3[i-1] + pdata3[i]
}

plot(xcols3, cdata3, "o", col="green", xlab="list3", ylab="F(X)", main="cdf")

cdata4 <- rep(0, 100)

cdata4[1] <- pdata4[1]

for(i in 2:100){
  cdata4[i] = cdata4[i-1] + pdata4[i]
}

plot(xcols4, cdata4, "o", col="yellow", xlab="list4", ylab="F(X)", main="cdf")

cdata5 <- rep(0, 100)

cdata5[1] <- pdata5[1]

for(i in 2:100){
  cdata5[i] = cdata5[i-1] + pdata5[i]
}

plot(xcols5, cdata5, "o", col="grey", xlab="list5", ylab="F(X)", main="cdf")

mn <- rep(0,500)
std <- rep(0,500)

i=1
for(i in 1:500)
{
  mn[i] <- mean(list[[i]])
  std[i] <- sd(list[[i]])
}
print (mn[1])
print (mn[2])
print (mn[3])
print (mn[4])
print (mn[5])
print (std[1])
print (std[2])
print (std[3])
print (std[4])
print (std[5])
##

pdata_m <- rep(0, 10);

for(i in 1:500){
  val1=round(mn[i], 0);
  if(val1 <= 10){
    pdata_m[val1] = pdata_m[val1] + 1/ 500; 
  }
}

xcols_m <- c(1:10)

str(pdata_m)
str(xcols_m)

plot(xcols_m, pdata_m, "l", xlab="mean", ylab="f(X)", main="pdf of means")

cdata_m <- rep(0, 10)

cdata_m[1] <- pdata_m[1]

for(i in 2:10){
  cdata_m[i] = cdata_m[i-1] + pdata_m[i]
}

plot(xcols_m, cdata_m, "o", col="pink", xlab="mean", ylab="F(X)", main="cdf of means")
tab <- table(round(mn))
str(tab)
plot(tab, "h", xlab="Value", ylab="Frequency")
##

mnf <- rep(0, 1)
stdf <- rep(0, 1)
mnf <- mean(mn)
stdf <- sd(mn)

print(mnf)
print(stdf)





