%Program to demonstrate non-linear Curve analysis using MATLAB
%Example 1 data for a function F=a0(e^(-a1(x-a2)^2)))
%version 2007-10-08 D.W. Donovan

clear all;
load('nonlinex1.mat','-ascii');
x=nonlinex1(:,1);
fx=nonlinex1(:,2);

figure
plot(x,fx)

a00= [ 1.0 25 50]

a=fminsearch(@fnnonlinclassex1,a00)

a0=a(1);
a1=a(2);
a2=a(3);

ffx=a0*exp(-a1*(x-a2).^2);
ss=(fx-ffx)'*(fx-ffx);
xc=[min(x):(max(x)-min(x))/100:max(x)]';
fxc=a0*exp(-a1*(xc-a2).^2);

la00=['a00 = ',num2str(a00)];
la0=['a0 = ',num2str(a0)];
la1=['a1 = ',num2str(a1)];
la2=['a2 = ',num2str(a2)];
lss=['sm Sq = ',num2str(ss)];
lssdp=['sm Sq DP = ',num2str(ss/size(fx,1))];

figure
hold on;
t1='Non-Linear Curve Fitting Class Example #1';
t2='Data Fitted to F(x) = a0 exp(-a1(x-a2)^2)';
name='D.W. Donovan - ';
t=[t1,'\newline',t2,'\newline',name,date];
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

legend('raw data','fitted curve',la00,la0,la1,la2,lss,lssdp,2);
legend('boxoff')
