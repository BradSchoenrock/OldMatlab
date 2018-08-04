%problem 3

clear all;
load('nlonelor.mat','-ascii');
x=nlonelor(:,1);
fx=nlonelor(:,2);

figure
plot(x,fx)
t1='nonlinear fitting problem 3\newline';
name='B.D. Schoenrock - ';
t=[t1,name,date];
title(t)
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

a00= [1000 10 450]
%a00= [10 .5 .1]

a=fminsearch(@fnnonlinproblem3,a00)

a1=a(1);
a2=a(2);
a3=a(3);

ffx=(a1./(a2.^2+(x-a3).^2));
ss=(fx-ffx)'*(fx-ffx);
xc=[min(x):(max(x)-min(x))/100:max(x)]';
fxc=a1./(a2.^2+(xc-a3).^2);
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
t2='Data Fitted to a1/(a2^2+(x-a3)^2)\newline';
name='B.D. Schoenrock - ';
t=[t1,t2,name,date];
title(t)
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

plot(x,fx,'r*')
plot(xc,fxc,'b-')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')

legend('raw data','fitted curve',la00,la1,la2,la3,lss,lssdp,2);
legend('boxoff')

%{
a00 = 1000          10         450
a = 2985.6    8.000     450.0
ssdp = 2.9822

a00 = 10.0000    0.5000    0.1000
a = 2985.6   -8.000    450.0
ssdp = 2.9822
%}