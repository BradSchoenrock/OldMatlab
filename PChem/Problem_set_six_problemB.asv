%Program to determine parameters to fit a set of data
%Version 1/25/2010
clear all;

x=[.5 1.013 2 3 5 10 20 30 42.4 50 70 100]';
fx=[.99412 .98896 .97942 .96995 .95133 .90569 .81227 .70177 .47198 .22376 .26520 .34920]';

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
ttla=('Z vs. P');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('P in Bar');
ylabel('Z');

plot(x,fx,'b.')
plot(xc,fxc1,'r--')
legend('raw data','linear fit',1)
legend('boxoff')


%{
a = 
    'Parameter'    'Linear Fit'
    'a0'           [    0.9570]
    'a1'           [   -0.0086]
    'sum Sq'       [    0.1879]
%}
