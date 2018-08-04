
%Brad Schoenrock

clear all;

a=[1 -1 0;
   (20+10) (120+50) -(50+10);
   -10 -50 (10+50+8+50);];
b=[20 0 0]';

x=a\b;

i1=x(1);
i2=x(2);
i3=x(3);


test=a*x;
xs1='i1';
xs2='i2';
xs3='i3';

ANS={'variable' 'value' 'Exp B' 'Calc B';
    xs1 i1 b(1) test(1);xs2 i2 b(2) test(2);
    xs3 i3 b(3) test(3);}


%{
ANS = 

    'variable'    'value'      'Exp B'    'Calc B'      
    'i1'          [17.0600]    [   20]    [          20]
    'i2'          [-2.9400]    [    0]    [-5.3291e-014]
    'i3'          [ 0.2000]    [    0]    [-3.5527e-015]
%}
    

