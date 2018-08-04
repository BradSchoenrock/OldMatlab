%kirchofs laws and voltage nodes
%Brad Schoenrock

clear all;

a=[(2200+10000) -6800 0;
   0 6800 -(3300+4700);
   1 1 1];
   
b=[-15 15 0]';

x=a\b;

test=a*x;

ANS={'variable' 'value' 'Exp B' 'Calc B';
    'i1' x(1) b(1) test(1);'i2' x(2) b(2) test(2);
    'i3' x(3) b(3) test(3);}

% voltage nodes

aa=[-1 1 0 0 0 0;
    1/2200 1/10000 -1/10000 0 0 0;
    0 0 -1 1 0 0;
    0 -1/10000 (1/10000+1/3300) 1/6800 -1/3300 0;
    0 0 -1/3300 0 (1/3300+1/4700) -1/4700;
    0 0 0 0 0 1;];
    
bb=[5 0 10 0 0 5]';

xx=aa\bb;

test2=aa*xx;

ANS2={'variable' 'value' 'Exp B' 'Calc B';
    'v1' xx(1) bb(1) test2(1);'v2' xx(2) bb(2) test2(2);
    'v3' xx(3) bb(3) test2(3);'v4' xx(4) bb(4) test2(4);
    'v5' xx(5) bb(5) test2(5);'v6' xx(6) bb(6) test2(6);}

v2200=xx(1)
v10000=xx(2)-xx(3)
v6800=xx(4)
v3300=xx(3)-xx(5)
v4700=xx(5)-xx(6)


%{
ANS = 
    'variable'    'value'           'Exp B'    'Calc B'     
    'i1'          [-5.1073e-004]    [  -15]    [        -15]
    'i2'          [      0.0013]    [   15]    [         15]
    'i3'          [-7.7886e-004]    [    0]    [1.0842e-019]


ANS2 = 
    'variable'    'value'      'Exp B'    'Calc B'      
    'v1'          [-1.1236]    [    5]    [           5]
    'v2'          [ 3.8764]    [    0]    [-4.6079e-019]
    'v3'          [-1.2308]    [   10]    [          10]
    'v4'          [ 8.7692]    [    0]    [ 8.1315e-019]
    'v5'          [ 1.3394]    [    0]    [           0]
    'v6'          [      5]    [    5]    [           5]


v2200 = -1.1236
v10000 = 5.1073
v6800 = 8.7692
v3300 = -2.5702
v4700 = -3.6606
%}

