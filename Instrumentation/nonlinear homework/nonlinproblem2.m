%problem 2

clear all;
load('nlonegauss.mat','-ascii');
x=nlonegauss(:,1);
fx=nlonegauss(:,2);

figure
plot(x,fx)
t1='nonlinear fitting problem 2\newline';
name='B.D. Schoenrock - ';
t=[t1,name,date];
title(t)
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

a00=[100 2 -2]
%a00= [10 7500 -2.5]

a=fminsearch(@fnnonlinproblem2,a00)

a1=a(1);
a2=a(2);
a3=a(3);

ffx=a1*(exp(-a2*(x-a3).^2));
ss=(fx-ffx)'*(fx-ffx);
xc=[min(x):(max(x)-min(x))/100:max(x)]';
fxc=a1*(exp(-a2*(xc-a3).^2));
ssdp=ss/size(fx,1)

la00=['a00 = ',num2str(a00)];
la1=['a1 = ',num2str(a1)];
la2=['a2 = ',num2str(a2)];
la3=['a3 = ',num2str(a3)];
lss=['sm Sq = ',num2str(ss)];
lssdp=['sm Sq DP = ',num2str(ssdp)];

figure
hold on;
t1='Non-Linear Curve Fitting\newline';
t2='Data Fitted to F(x) = a1[exp(-a2(x-a3)^2)]\newline';
name='B.D. Schoenrock - ';
t=[t1,t2,name,date];
title(t)
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

plot(x,fx,'r*')
plot(xc,fxc,'b')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')

legend('raw data','fitted curve',la00,la1,la2,la3,lss,lssdp,1);
legend('boxoff')

%{
a00 = 100     2    -2
a = 101.3588    1.2487   -2.4015
ssdp = 8.3666

a00 = 10    7500   -2.5
a = 101.3588    1.2487   -2.4015
ssdp = 8.3666
%}