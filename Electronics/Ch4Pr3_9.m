
%Brad Schoenrock

clear all;

a=[0 0 0 1;
   -1/8 0 (1/8+1/12+1/40) -1/12 ;
   1/8 1/20 -1/8 -1/20;
   -1 1 0 0;];
b=[15 0 1.25 5]';

x=a\b;

v1=x(1);
v2=x(2);
v3=x(3);
v4=x(4);


test=a*x;
xs1='v1';
xs2='v2';
xs3='v3';
xs4='v4';

ANS={'variable' 'value' 'Exp B' 'Calc B';
    xs1 v1 b(1) test(1);xs2 v2 b(2) test(2);
    xs3 v3 b(3) test(3);xs4 v4 b(4) test(4);}


%{
ANS = 
    'variable'    'value'      'Exp B'     'Calc B'
    'v1'          [22.3967]    [    15]    [    15]
    'v2'          [27.3967]    [     0]    [     0]
    'v3'          [17.3554]    [1.2500]    [1.2500]
    'v4'          [     15]    [     5]    [     5]
%}
    

