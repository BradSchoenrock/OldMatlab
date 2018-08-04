% loads the data from automatic IV curve for diode and plots
% Brad Schoenrock

clear all;

load('fdata.mat','-ASCII')

y=fdata(:,1);
x=fdata(:,2);

figure;
hold on
plot(x,y,'r*');
t1='I V Curve for a Diode';
t3='Brad Schoenrock';
t0='\newline';
t=[t1,t0,t3,t0,date];
title(t)
xlabel('voltage, V, (volts)')
ylabel('current, i, (amps)')
