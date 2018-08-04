
%Brad Schoenrock
%2-01-2009

clear all;

y= [-3;-4;0;12;32;60];

x= [-3;-2;0;2;4;6];

figure;
hold on
plot(x,y,'r*');
t1='current vs. voltage';
t3='Brad Schoenrock';
t0='\newline';
t=[t1,t0,t3,t0,date];
title(t)
xlabel('Current i in Amps (A)')
ylabel('Voltage V in Volts (V)')

%{
Brad Schoenrock
not a linear relationship
%}