
%Brad Schoenrock

clear all;

a=[-1 1 0;
   -1 0 1;
   1/4 1/10 1/5;];
b=[8 12 0]';

x=a\b;

v1=x(1);
v2=x(2);
v3=x(3);


test=a*x;
xs1='v1';
xs2='v2';
xs3='v3';

ANS={'variable' 'value' 'Exp B' 'Calc B';
    xs1 v1 b(1) test(1);xs2 v2 b(2) test(2);
    xs3 v3 b(3) test(3);}


%{
ANS = 
    'variable'    'value'    'Exp B'    'Calc B'
    'v1'          [   -4]    [    8]    [     8]
    'v2'          [    4]    [   12]    [    12]
    'v3'          [    8]    [    0]    [     0]
%}
    

