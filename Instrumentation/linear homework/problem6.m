%program for linear curve fitting with complicated functions


clear all;

load('lincrvcomph.mat','-ascii');

x=lincrvcomph(:,1);
fx=lincrvcomph(:,2);

g0=x.^2-1;
g1=3*x.^3-5*x;
g2=(x-4).^4;

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
gc0=xc.^2-1;
gc1=3*xc.^3-5*xc;
gc2=(xc-4).^4;
pc=a0*gc0+a1*gc1+a2*gc2;

p=a0*g0+a1*g1+a2*g2;
er=p-fx;
ss=er'*er
ssdp=ss/size(x,1)

tt1='Linear Curve Fitting with complicated functions';
tt2='g0=x.^2';
tt3='g1=exp(-.4*x)';
tt4='g2=cos(6*x)';
name='B.D.Schoenrock - ';
tta=[tt1,'\newline',tt2,'  ',tt3,'  '];
tt=[tta,tt4,'\newline',name,date];
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
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

legend('raw data','fitted curve',la0,la1,la2,lss,lssdp,2);
legend('boxoff')

%{
a0 = -76.9041
a1 = 10.9889
a2 = 0.5573
ss = 6.6494e+005
ssdp = 9.1088e+003
%}
