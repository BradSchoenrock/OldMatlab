%solving systems of linear equasions
%Brad Schoenrock

clear all;

a=[(1/125+1/250) -1/125 -1/250;
    -1/125 (1/125+1/500+1/250) -1/250;
    -1/250 -1/250 (1/250+1/250+1/500);];

b=[.001 0 0]';

x=a\b;

x1=x(1);
x2=x(2);
x3=x(3);


test=a*x;
xs1='va';
xs2='vb';
xs3='vc';

ANS={'variable' 'value' 'Exp B' 'Calc B';
    xs1 x1 b(1) test(1);xs2 x2 b(2) test(2);
    xs3 x3 b(3) test(3);}

%{
    the currents are all given here
ANS = 

    'variable'    'value'     'Exp B'          'Calc B'     
    'va'          [0.3370]    [1.0000e-003]    [1.0000e-003]
    'vb'          [0.2609]    [          0]    [5.4210e-019]
    'vc'          [0.2391]    [          0]    [          0]
%}

v=x2-x3

%{
v = 0.0217 volts or 21.7 mV
%}
