
%Brad Schoenrock

clear all;

a=[-1 1 0 0;
   1/1000 1/5000 -1/5000 0;
   0 -1/5000 (1/5000+1/4000) -1/4000;
   1 0 -1 0;];
b=[12 0 0 0]';

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
    'variable'    'value'       'Exp B'    'Calc B'      
    'va'          [ -2.4000]    [   12]    [          12]
    'vb'          [  9.6000]    [    0]    [-2.4937e-018]
    'vc'          [ -2.4000]    [    0]    [ 4.3368e-019]
    'vd'          [-12.0000]    [    0]    [-8.8818e-016]
%}
    
i=(vd-vc)/4000

% i = -0.0024

