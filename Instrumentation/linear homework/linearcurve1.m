%Program to determine parameters to fit a set of data
%Version 2007-10-01 D.W. Donovan
clear all;

x=[.13 .21 .45 .81 1.01]';
fx=[.1 .2 .4 .7 .9]';

g0=x.^0;
g1=x;
g2=x.^2;

al00=g0'*g0;
al01=g0'*g1;
al10=al01;
al11=g1'*g1;
al02=g0'*g2;
al20=al02;
al12=g1'*g2;
al21=al12;
al22=g2'*g2;

b0=fx'*g0;
b1=fx'*g1;
b2=fx'*g2;

Alpha1=[al00 al01;al10 al11];
B1=[b0 b1]';
A1=Alpha1\B1;
p1=A1(1)*g0+A1(2)*g1;
er1=p1-fx;
ss1=er1'*er1;

Alpha2=[al00 al01 al02; al10 al11 al12; al20 al21 al22];
B2=[b0 b1 b2]';
A2=Alpha2\B2;
p2=A2(1)*g0+A2(2)*g1+A2(3)*g2;
er2=p2-fx;
ss2=er2'*er2;

xc=[min(x):(max(x)-min(x))/100:max(x)]';
gc0=xc.^0;
gc1=xc;
gc2=xc.^2;

fxc1=A1(1)*gc0+A1(2)*gc1;
fxc2=A2(1)*gc0+A2(2)*gc1+A2(3)*gc2

t0='Parameter';
l1='a0';
l2='a1';
l3='a2';
l4='sum Sq';
t1='2-parm';
t2='3-parm';
tn='N/A';

a={t0 t1 t2;l1 A1(1) A2(1);
    l2 A1(2) A2(2); l3 tn A2(3);
    l4 ss1 ss2};
a

figure
hold on
plot(x,fx,'b.')
plot(xc,fxc1,'r--')
plot(xc,fxc2,'g.-')
legend('raw data','2-parm','3-parm',2)
legend('boxoff')
%{
a = 

    'Parameter'    '2-parm'         '3-parm'     
    'a0'           [    -0.0015]    [9.6668e-004]
    'a1'           [     0.8841]    [     0.8702]
    'a2'           'N/A'            [     0.0124]
    'sum Sq'       [7.3171e-004]    [7.2775e-004]
%}
