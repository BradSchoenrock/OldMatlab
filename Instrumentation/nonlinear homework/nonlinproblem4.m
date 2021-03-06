%problem 4

clear all;
load('nltwogauss.mat','-ascii');
x=nltwogauss(:,1);
fx=nltwogauss(:,2);

figure
plot(x,fx)
t1='nonlinear fitting problem 4\newline';
name='B.D. Schoenrock - ';
t=[t1,name,date];
title(t)
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

a00=[10 .5 50 12 .5 55]
%a00= [1 1 50 8 1 54]

a=fminsearch(@fnnonlinproblem4,a00)

a1=a(1);
a2=a(2);
a3=a(3);
a4=a(4);
a5=a(5);
a6=a(6);

ffx=a1*exp(-a2*(x-a3).^2)+a4*exp(-a5*(x-a6).^2);
ss=(fx-ffx)'*(fx-ffx);
xc=[min(x):(max(x)-min(x))/100:max(x)]';
fxc=a1*exp(-a2*(xc-a3).^2)+a4*exp(-a5*(xc-a6).^2);
ssdp=ss/size(fx,1)

la00=['a00 = ',num2str(a00)];
la1=['a1 = ',num2str(a1)];
la2=['a2 = ',num2str(a2)];
la3=['a3 = ',num2str(a3)];
la4=['a4 = ',num2str(a4)];
la5=['a5 = ',num2str(a5)];
la6=['a6 = ',num2str(a6)];
lss=['sm Sq = ',num2str(ss)];
lssdp=['sm Sq DP = ',num2str(ssdp)];

figure
hold on;
t1='Non-Linear Curve Fitting problem 4\newline';
t2='Data Fitted to F(x) = a1 exp(-a2(x-a3)^2)+a4 exp(-a5(x-a6)^2)\newline';
name='B.D.Schoenrock - ';
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
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')

legend('raw data','fitted curve',la00,la1,la2,la3,la4,la5,la6,lss,lssdp,2);
legend('boxoff')

%{
a00 = 9.9000    0.2500   52.0000   12.2000    0.6000   55.0000
a = 9.9130    0.2673   51.9718   12.2132    0.6145   54.9844
ssdp = 0.0207


a00 = 1     1    50     8     1    54
a = 9.9130    0.2673   51.9718   12.2132    0.6145   54.9844
ssdp = 0.0207
%}
