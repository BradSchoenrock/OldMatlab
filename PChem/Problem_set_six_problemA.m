%Program to determine parameters to fit a set of data
%Version 1/25/2010
clear all;

x=1./([57.4+273.15 100.4+273.15 133+273.15 157+273.15 203.5+273.15]');
fx=log([1 10 40 100 400])';

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
ttla=('lnp vs 1/T');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('1/T in inverse Kelven');
ylabel('ln P');

plot(x,fx,'b.')
plot(xc,fxc1,'r--')
legend('raw data','linear fit',2)
legend('boxoff')

R=8.3145;
A1(2);

H=-1.*A1(2).*R
%{
a = 
    'Parameter'    'Linear Fit'  
    'a0'           [     19.6321]
    'a1'           [-6.4806e+003]
    'sum Sq'       [      0.0047]


H = 5.3883e+004

slope is a1 and intercept is a0
after looking at the graph i believe this to be an appropriate fit
%}
