
%Brad Schoenrock

clear all;

a=[1 0 0 0;
   0 (1/20000+1/20000) -1/20000 0;
   0 -1/20000 (1/20000+1/10000+1/8000) -1/8000;
   -1 1 0 0;];
b=[1.5 0 0 0]';

x=a\b;

va=x(1);
vb=x(2);
vc=x(3);
vd=x(4);


test=a*x;

ANS={'variable' 'value' 'Exp B' 'Calc B';
    'va' va b(1) test(1);'vb' vb b(2) test(2);
    'vc' vc b(3) test(3);'vd' vd b(4) test(4);}

%{
ANS = 
    'variable'    'value'      'Exp B'     'Calc B'
    'va'          [ 1.5000]    [1.5000]    [1.5000]
    'vb'          [ 1.5000]    [     0]    [     0]
    'vc'          [      3]    [     0]    [     0]
    'vd'          [      6]    [     0]    [     0]
%}
 
    i=(vd-vc)/8000
    
    % i = 3.7500e-004
    
