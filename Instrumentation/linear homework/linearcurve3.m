%program to demonstrate linear curve fitting with non-poly functions
%version 2007-10-01 D.W. Donovan
clear all;

load('lincrvex1.mat','-ascii');  %data that is well suited to this fit
load('lincrvex2.mat','-ascii');  %data that is not well suited to this fit

x=lincrvex1(:,1);
fx=lincrvex1(:,2);

nx=lincrvex2(:,1);
nfx=lincrvex2(:,2);

%{
x=nx;       %when these lines are commented out the data that is reasonable
fx=nfx;     %to use these functions is what we fit.
            %when these lines are not commented out the data that is not
            %reasonable to fit is fitted and the results are not even close
%}

g0=x.^2;
g1=exp(-.4*x);
g2=cos(6*x);

al00=g0'*g0;
al01=g0'*g1;
al10=al01;
al02=g0'*g2;
al20=al02;
al11=g1'*g1;
al12=g1'*g2;
al21=al12;
al22=g2'*g2;

b0=fx'*g0;
b1=fx'*g1;
b2=fx'*g2;

Alpha=[al00 al01 al02; al10 al11 al12; al20 al21 al22];
B=[b0 b1 b2]';

A=Alpha\B;
a0=A(1)
a1=A(2)
a2=A(3)

xc=[min(x):(max(x)-min(x))/10000:max(x)]';
gc0=xc.^2;
gc1=exp(-.4*xc);
gc2=cos(6*xc);
pc=a0*gc0+a1*gc1+a2*gc2;

p=a0*g0+a1*g1+a2*g2;
er=p-fx;
ss=er'*er
ssdp=ss/size(x,1)

tt1='Linear Curve Fitting example using non-polynomial functions:';
tt2='g0=x.^2';
tt3='g1=exp(-.4*x)';
tt4='g2=cos(6*x)';
name='D.W. Donovan';
tta=[tt1,' \newline ',tt2,'  ',tt3,'  '];
tt=[tta,tt4,'  ',' \newline ',name,'   ',date];
la0=['a0 = ',num2str(a0)];
la1=['a1 = ',num2str(a1)];
la2=['a2 = ',num2str(a2)];
lss=['sm Sq = ',num2str(ss)];
lssdp=['sm Sq DP = ',num2str(ssdp)];

figure
hold on;
title(tt);
plot(x,fx,'b*')
plot(xc,pc,'r')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')

legend('raw data','fitted curve',la0,la1,la2,lss,lssdp,4);
legend('boxoff')

%{

a0 =   10.5600
a1 =    0.4370
a2 =  -75.9300

ss =  3.1581e-009
ssdp = 3.8989e-011


a0 =  10.0185
a1 =   2.5325
a2 = -82.0406

ss = 1.9927e+006
ssdp = 2.4602e+004
%}
