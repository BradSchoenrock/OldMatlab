
%Brad Schoenrock

clear all;

a=[0 (4+6) -4;
   (2+2) 0 -2;
   -2 -4 (4+2);];
b=[10 -10 0]';

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
    'i1'          [-2.6471]    [   10]    [          10]
    'i2'          [ 0.8824]    [  -10]    [         -10]
    'i3'          [-0.2941]    [    0]    [-4.4409e-016]
    
  i in the figure was i3
%}
    

