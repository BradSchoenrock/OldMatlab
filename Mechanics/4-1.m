%this program Probability density functions for a partilce in a 1d box
%version 2008-01-17 B.S.

clear all;

D=5;
B=0.2;
R=0.75;
r=(-10:.01:10)';

F1=D*(1-exp.^(-B*(r-R))).^2);

figure;
hold on;

ttla=('Probability Density Function');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('x');
ylabel('Probability Density Function');
axis([-.5  .5  -.5 5]);

plot(r,F1,'b.');
%text();

hold off