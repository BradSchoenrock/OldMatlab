%exapmle program to learn matlab
%Brad Schoenrock
%1-14-2009

clear all;

S=(0:.1:2)';
T=(2:.1:10)';

P1=2;
P2=-2*exp(-2*(T-2));

figure;
hold on;

ttla=('Current Vs. Time');
tt2='Brad Schoenrock';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('Time in sec (s)');
ylabel('Current in Amps (A)');
axis([0 10  -3 3]);

plot(S,P1,'.','color','k');
plot(T,P2,'.','color','k');
hold off
