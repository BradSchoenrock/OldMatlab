
%Brad Schoenrock

clear all;

a=[-1/4 (1/4+1/5) -1/5;
   1 0 -1;
   (1/4+1/2) -(1/4+1/5) (1/5+1/3);];
b=[.5 10 0]';

x=a\b;

va=x(1);
vb=x(2);
vc=x(3);


test=a*x;
xs1='va';
xs2='vb';
xs3='vc';

ANS={'variable' 'value' 'Exp B' 'Calc B';
    xs1 va b(1) test(1);xs2 vb b(2) test(2);
    xs3 vc b(3) test(3);}


%{
ANS = 

    'variable'    'value'      'Exp B'     'Calc B'      
    'va'          [ 4.6000]    [0.5000]    [      0.5000]
    'vb'          [ 1.2667]    [    10]    [          10]
    'vc'          [-5.4000]    [     0]    [-4.4409e-016]

%}
    

