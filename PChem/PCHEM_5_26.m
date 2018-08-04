%Program to determine parameters to fit a set of data
clear all;

x=[1/900 1/1000 1/1100 1/1200]';
fx=log([1.32;.47;.21;.10]);

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
t1='Linear Fit';

a={t0 t1 ;l1 A1(1);
    l2 A1(2) ;l4 ss1}

figure
hold on
ttla=('ln(K) vs. 1/temp');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('1/T in inverse Kelven');
ylabel('ln K');

plot(x,fx,'b.')
plot(xc,fxc1,'r--')
legend('raw data','linear fit',2)
legend('boxoff')
%{
a = 

    'Parameter'    'Linear Fit' 
    'a0'           [    -9.9869]
    'a1'           [9.2400e+003]
    'sum Sq'       [     0.0010]

slope is a1 and intercept is a0
after looking at the graph i believe this to be an appropriate fit
%}