
%Brad Schoenrock

clear all;

a=[(150+100) -100 0;
   -100 (330+100+220+270) -270;
   0 -270 (270+390+470);];
b=[10 0 0]';

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
    'variable'    'value'     'Exp B'    'Calc B'     
    'i1'          [0.0420]    [   10]    [    10.0000]
    'i2'          [0.0049]    [    0]    [1.5543e-015]
    'i3'          [0.0012]    [    0]    [2.2204e-016]
     %}
    

