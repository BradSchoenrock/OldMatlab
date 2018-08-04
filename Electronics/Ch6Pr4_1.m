
%Brad Schoenrock

clear all;

a=[1 0 0 0 0;
   -1/20000 (1/20000+1/40000+1/40000) -1/40000 0 0;
   0 0 1 0 0;
   0 -1 0 0 1;
   0 0 0 -1/9000 (1/9000+1/1000);];
b=[2 0 -5 0 0]';

x=a\b;

va=x(1);
vb=x(2);
vc=x(3);
vd=x(4);
ve=x(5);


test=a*x;

ANS={'variable' 'value' 'Exp B' 'Calc B';
    'va' va b(1) test(1);'vb' vb b(2) test(2);
    'vc' vc b(3) test(3);'vd' vd b(4) test(4);
    've' ve b(5) test(5);}

%{
ANS = 
    'variable'    'value'      'Exp B'    'Calc B'
    'va'          [      2]    [    2]    [     2]
    'vb'          [-0.2500]    [    0]    [     0]
    'vc'          [     -5]    [   -5]    [    -5]
    'vd'          [-2.5000]    [    0]    [     0]
    've'          [-0.2500]    [    0]    [     0]
%}

