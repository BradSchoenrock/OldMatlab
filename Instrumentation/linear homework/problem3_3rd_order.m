%program to determine coeficiants of a 3rd order polynomial
clear all;

load('p4lincrvh.mat','-ascii');

x=p4lincrvh(:,1);
fx=p4lincrvh(:,2);

g0=x.^0;
g1=x.^1;
g2=x.^2;
g3=x.^3;

al00=g0'*g0;
al01=g0'*g1;
al02=g0'*g2;
al03=g0'*g3;
al10=al01;
al11=g1'*g1;
al12=g1'*g2;
al13=g1'*g3;
al20=al02;
al21=al12;
al22=g2'*g2;
al23=g2'*g3;
al30=al03;
al31=al13;
al32=al23;
al33=g3'*g3;

b0=fx'*g0;
b1=fx'*g1;
b2=fx'*g2;
b3=fx'*g3;

Alpha=[al00 al01 al02 al03; 
    al10 al11 al12 al13; 
    al20 al21 al22 al23;
    al30 al31 al32 al33;];

B=[b0 b1 b2 b3]';

A=Alpha\B;
a0=A(1)
a1=A(2)
a2=A(3)
a3=A(4)

xc=[min(x):(max(x)-min(x))/10000:max(x)]';
gc0=xc.^0;
gc1=xc.^1;
gc2=xc.^2;
gc3=xc.^3;
pc=a0*gc0+a1*gc1+a2*gc2+a3*gc3;

p=a0*g0+a1*g1+a2*g2+a3*g3;
er=p-fx;
ss=er'*er
ssdp=ss/size(x,1)

tt1='Linear Curve Fitting with polynomials\newline3rd order fit-problem 3';
name='B.D.Schoenrock - ';
tta=[tt1,'\newline'];
tt=[tta,name,date];
la0=['a0 = ',num2str(a0)];
la1=['a1 = ',num2str(a1)];
la2=['a2 = ',num2str(a2)];
la3=['a3 = ',num2str(a3)];
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
plot(max(x),min(fx),'w.')
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')


legend('raw data','fitted curve',la0,la1,la2,la3,lss,lssdp,2);
legend('boxoff')

%{
a0 = -4.0465e+003
a1 = -11.1544
a2 = 2.9012
a3 = 2.5876
ss = 1.2008e+009
ssdp = 1.2379e+007
%}
