%Program to determine parameters to fit a set of data
clear all;

x=[-10 -8 -6 -4 -2 0 2 4 6 8 10]';
fx=[122.7106 96.9288 80.9006 62.2326 35.1397 19.6305 5.9876 -17.7030 -20.4644 -54.1783 -71.2149]';

g0=x.^0;
g1=x;

al00=g0'*g0;
al01=g0'*g1;
al10=al01;
al11=g1'*g1;

b0=fx'*g0;
b1=fx'*g1;

Alpha1=[al00 al01;al10 al11];
B1=[b0 b1]';
A1=Alpha1\B1;
p1=A1(1)*g0+A1(2)*g1;
er1=p1-fx;
ss1=er1'*er1;

xc=[min(x):(max(x)-min(x))/100:max(x)]';
gc0=xc.^0;
gc1=xc;

fxc1=A1(1)*gc0+A1(2)*gc1;

t0='Parameter';
l1='a0';
l2='a1';
l4='sum Sq';
t1='linear fit value';
tn='N/A';


figure
hold on
plot(x,fx,'b*')
plot(xc,fxc1,'r-')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
t1='Problem 2 - linear regression';
tt2='B.D. Schoenrock - ';
tt=[t1,'\newline',tt2,date];
title(tt)
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

la0=['a0 = ',num2str(A1(1))]
la1=['a1 = ',num2str(A1(2))]
lss=['ss = ',num2str(ss1)]
lssdp=['ssdp = ',num2str(ss1./size(x,1))]

legend('raw data','linear fit',la0,la1,lss,lssdp,1)
legend('boxoff')
%{

a0 = 23.6336
a1 = -9.3962
ss = 274.5485
ssdp = 24.959
%}
