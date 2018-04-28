% step1
data = dlmread("train.csv",',',1,0);
xt = data(:,1);
yt = data(:,2);
xt(:,2) = xt(:,1);
xt(:,1) = 1;

% step2
w=rand(2,1);
wt = w'*xt';

% step3
scatter(xt(:,2),yt)
xlabel ("feature")
ylabel ("label")
hold on
plot(xt(:,2),wt)
pause(3)
close

% step4
wdir = inv(xt' * xt) * (xt' * yt)
wt = wdir' * xt';
scatter(xt(:,2),yt)
xlabel ("feature")
ylabel ("label")
hold on
plot(xt(:,2),wt)
pause(3)
close

% step5
for nep=1:2
	x1(1,1)=1;
	for j=1:10000
		x = xt(j,2);
		y = yt(j);
		x1(2,1)=x;
		w = w - (0.00000001 * ((w' * x1) - y) * x1);
		if mod(j,100) ==  0
			wt = w' * xt';
			scatter(xt(:,2),yt)
			xlabel ("feature")
			ylabel ("label")
			plot(xt(:,2),wt)
			hold on
		end
	end
end
pause(3)
close	

% step6
wt = w' * xt';
scatter(xt(:,2),yt)
xlabel ("feature")
ylabel ("label")
hold on
plot(xt(:,2),wt)	
pause(3)
close	
	

% step7
data2 = dlmread("test.csv",',',1,0);
xte = data2(:,1);
yte = data2(:,2);
xte(:,2) = xte(:,1);
xte(:,1) = 1;

ypre1 = xte * w;
error1 = sqrt(mean((ypre1 - yte).^2))

ypre2 = xte * wdir;
error2 = sqrt(mean((ypre2 - yte).^2))

	
	
	
	
	
	
	
	
