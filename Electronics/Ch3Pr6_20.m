%solving systems of linear equasions
%Brad Schoenrock

clear all;

a=[1 0 0 1 0 0 -1;
   0 0 1 0 -1 0 1;
   0 -1 0 0 0 1 1;
   -10 0 0 (30+10) 0 0 0;
   0 0 -80 0 -20 0 0;
   0 16 0 0 0 (4+6+6) 0;
   -10 -16 0 0 -20 0 (-12-4);];

b=[0 0 0 0 0 0 -24]';

x=a\b;

x1=x(1);
x2=x(2);
x3=x(3);
x4=x(4);
x5=x(5);
x6=x(6);
x7=x(7);

test=a*x;
xs1='i1';
xs2='i2';
xs3='i3';
xs4='i4';
xs5='i5';
xs6='i6';
xs7='i7';
ANS={'variable' 'value' 'Exp B' 'Calc B';
    xs1 x1 b(1) test(1);xs2 x2 b(2) test(2);
    xs3 x3 b(3) test(3);xs4 x4 b(4) test(4);
    xs5 x5 b(5) test(5);xs6 x6 b(6) test(6);
    xs7 x7 b(7) test(7);}

%{
    the currents are all given here
ANS = 

    'variable'    'value'      'Exp B'    'Calc B'
    'i1'          [ 0.4000]    [    0]    [     0]
    'i2'          [ 0.2500]    [    0]    [     0]
    'i3'          [-0.1000]    [    0]    [     0]
    'i4'          [ 0.1000]    [    0]    [     0]
    'i5'          [ 0.4000]    [    0]    [     0]
    'i6'          [-0.2500]    [    0]    [     0]
    'i7'          [ 0.5000]    [  -24]    [   -24]
%}


% the voltages are ...

v1=x1*10
v2=x2*16
v4=-1*x4*30
v5=x6*4

%{
... here
v1 = 4
v2 = 4
v4 = -3
v5 = -1
%}

