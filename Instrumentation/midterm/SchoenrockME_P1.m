% solves system of simultanious equations for midterm problem 1
% Brad Schoenrock

clear all;

a=[1 1 1;
   (50+75+100) -300 0;
   0 300 (-250-140-60)];
b=[0 5 5]';

x=a\b;

i1=x(1);
i2=x(2);
i3=x(3);


test=a*x;

ANS={'variable' 'value' 'Exp B' 'Calc B';
    'i1' i1 b(1) test(1);'i2' i2 b(2) test(2);
    'i3' i3 b(3) test(3);}

% measureing vac and vcb using two paths to ensure consistancy
vac1=50*i1-10+100*i1
vac2=-15-75*i1+10+300*i2
vcb1=-250*i3-20
vcb2=-300*i2-10+140*i3-5+60*i3
vab=vac1+vcb1

%{
ANS = 

    'variable'    'value'      'Exp B'    'Calc B'     
    'i1'          [ 0.0173]    [    0]    [5.2042e-018]
    'i2'          [-0.0037]    [    5]    [          5]
    'i3'          [-0.0136]    [    5]    [          5]


vac1 = -7.4074
vac2 = -7.4074
vcb1 = -16.6049
vcb2 = -16.6049
vab = -24.0123
%}
    

