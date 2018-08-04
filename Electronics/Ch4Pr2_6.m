
%Brad Schoenrock

clear all;

a=[(1/20+1/20) -1/20 -1/20;
   -1/20 (1/20+1/10) -1/10;
   -1/20 -1/10 (1/40+1/10+1/20);];
b=[.003 .002 0]';

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
    'variable'    'value'     'Exp B'     'Calc B'      
    'va'          [0.2440]    [0.0030]    [      0.0030]
    'vb'          [0.2280]    [0.0020]    [      0.0020]
    'vc'          [0.2000]    [     0]    [-6.9389e-018]
%}

    
p3=.003*va
p2=.002*vb

%{
the powers of the sources (in watts) are
p3 = 7.3200e-004
p2 = 4.5600e-004
%}


