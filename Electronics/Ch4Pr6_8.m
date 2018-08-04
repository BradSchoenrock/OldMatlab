
%Brad Schoenrock

clear all;

a=[1 0 -1;
   1000 -(1000+4000) (4000+1000);
   -1000 (2000+4000+1000) -4000;];
b=[.002 3 0]';

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

    'variable'    'value'          'Exp B'     'Calc B'
    'i1'          [     0.0030]    [0.0020]    [0.0020]
    'i2'          [1.0000e-003]    [     3]    [     3]
    'i3'          [1.0000e-003]    [     0]    [     0]
    
    all i are in Amps
%}
    

