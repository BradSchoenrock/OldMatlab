
%Brad Schoenrock
%2-01-2009

clear all;

vs=9.98;
rc=4682.4;

rl=[100;1000;4700;10000;47000]; 
vc=[9.77;8.21;4.97;3.198;.913];
vl=[.2109;1.765;5.02;6.81;9.09];

i=vc/rc

%{
i in Amps
    0.0021
    0.0018
    0.0011
    0.0007
    0.0002
%}

p=i.*i.*rl

%{
p = in Watts
    0.0004
    0.0031
    0.0053
    0.0047
    0.0018
%}

y=p;
x=rl;

%Theory
rlt=[100:100:47000]';

vt2=10.0;
pt1=((vt2./(rc+rlt)).^2).*rlt;


figure;
hold on
plot(x,y,'r*');
plot(rlt,pt1,'b-');
legend('Data','Theory Line',1)
legend('boxoff')
t1='Power Vs. Resistance';
t3='Brad Schoenrock';
t0='\newline';
t=[t1,t0,t3,t0,date];
title(t)
xlabel('Resistance in ohms (\Omega)')
ylabel('Power P in watts (W)')

%{
Brad Schoenrock

%}