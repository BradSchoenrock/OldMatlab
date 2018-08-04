
%Brad Schoenrock
%version 2009-01-14

clear all;

a=[1 1 -1;
   0 -.05 -1.2;
   -.1 0 -1.2;];
b=[0 -12 -14]';

x=a\b;

x1=x(1)
x2=x(2)
x3=x(3)
x4=x(4)

test=a*x
xs1='x1';
xs2='x2';
xs3='x3';
xs4='x4';
ANS={'variable' 'value' 'Exp B' 'Calc B';
    xs1 x1 b(1) test(1);xs2 x2 b(2) test(2);
    xs3 x3 b(3) test(3);xs4 x4 b(4) test(4);};
ANS

%{
ANS = 

    'variable'    'value'        'Exp B'    'Calc B'  
    'x1'          [ -95.5333]    [    6]    [       6]
    'x2'          [-163.9914]    [   24]    [      24]
    'x3'          [ 136.0086]    [  300]    [     300]
    'x4'          [  45.1374]    [  -15]    [-15.0000]
%}
