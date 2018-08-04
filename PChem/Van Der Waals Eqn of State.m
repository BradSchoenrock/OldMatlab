%this program plots the van der waals eqn of state
%version 2010-01-25 B.S.

clear all;

R=.08205; %atm L/Mol K
T=144.52; %K
a=2.253; %atm L^2/mol^2
b=.0428; %L/mol

Vbar=(0.05:.05:.5)'; %L/mol

P=R*T/(x-b)+a/x/x;

figure;
hold on;

ttla=('Van Der Waals eqn. of State');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('Vbar in L/mol');
ylabel('Pressure in atm');

plot(Vbar,P,'b.');

hold off