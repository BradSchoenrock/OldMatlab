
%Brad Schoenrock

clear all;

a=[0 1 0;
   -1 0 1;
   (1/250+1/500) -(1/250+1/125) (1/125+1/500);];
b=[12 8 0]';

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
    'variable'    'value'    'Exp B'    'Calc B'      
    'va'          [    4]    [   12]    [          12]
    'vb'          [   12]    [    8]    [           8]
    'vc'          [   12]    [    0]    [-2.7756e-017]
%}
