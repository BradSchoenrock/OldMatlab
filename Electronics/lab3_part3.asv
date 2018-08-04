%Brad Schoenrock

%Theory
clear all;
%a and b is for voltage analysis
a=[1 0 0 0 0 0 0 0 0 0;
   -1/100 (1/150+1/100) -1/150 0 0 0 0 0 0 0;
   0 -1/150 (1/150+1/180+1/470) -1/180 0 0 -1/470 0 0 0;
   0 0 -1/470 0 0 -1/560 (1/470+1/560+1/680) -1/680 0 0;
   0 0 0 0 0 0 0 -1 1 0;
   0 0 0 0 0 0 -1/680 1/680 1/390 -1/390;
   0 0 0 0 0 -1/270 0 0 -1/390 (1/390+1/270);
   0 0 0 0 -1/220 (1/560+1/270+1/220) -1/560 0 0 -1/270;
   0 0 0 -1 1 0 0 0 0 0;
   0 0 -1/180 1/180 (1/330+1/220) -1/220 0 0 0 0;];

b=[5 0 0 0 7 0 0 0 3 0]';

v=a\b;
%so v contains my theory voltages
test=a*v;

ANS={'variable' 'value' 'Exp B' 'Calc B';
    'va' v(1) b(1) test(1);'vb' v(2) b(2) test(2);
    'vc' v(3) b(3) test(3);'vd' v(4) b(4) test(4);
    've' v(5) b(5) test(5);'vf' v(6) b(6) test(6);
    'vg' v(7) b(7) test(7);'vh' v(8) b(8) test(8);
    'vi' v(9) b(9) test(9);'vj' v(10) b(10) test(10);}

%aa and bb are for currents
aa=[(100+150+180+330) -180 0 0 0;
    -180 (180+470+560+220) -560 0 0;
    0 -560 (390+270+560+680) 0 0;
    1 -1 0 -1 0;
    0 1 -1 0 -1;];

bb=[(5+3) -3 7 0 0]';

i=aa\bb;
% i contains my theory currents in A
test2=aa*i;

ANS2={'variable' 'value' 'Exp B' 'Calc B';
    'i1' i(1) bb(1) test(1);'i2' i(2) bb(2) test(2);
    'i3' i(3) bb(3) test(3);'i4' i(4) bb(4) test(4);
    'i5' i(5) bb(5) test(5);}

%{
voltages here...
ANS = 
    'variable'    'value'      'Exp B'    'Calc B'      
    'va'          [      5]    [    5]    [           5]
    'vb'          [ 3.9288]    [    0]    [ 3.4694e-018]
    'vc'          [ 2.3220]    [    0]    [-3.4694e-018]
    'vd'          [ 0.5349]    [    0]    [-1.3010e-018]
    've'          [ 3.5349]    [    7]    [           7]
    'vf'          [ 3.7073]    [    0]    [           0]
    'vg'          [ 1.9537]    [    0]    [-6.9389e-018]
    'vh'          [-0.7086]    [    0]    [ 1.0408e-017]
    'vi'          [ 6.2914]    [    3]    [           3]
    'vj'          [ 4.7644]    [    0]    [-3.4694e-018]
currents here
ANS2 = 
    'variable'    'value'          'Exp B'    'Calc B'      
    'i1'          [     0.0107]    [    8]    [           5]
    'i2'          [7.8367e-004]    [   -3]    [ 3.4694e-018]
    'i3'          [     0.0039]    [    7]    [-3.4694e-018]
    'i4'          [     0.0099]    [    0]    [-1.3010e-018]
    'i5'          [    -0.0031]    [    0]    [           7]
%}

% checking my work with a couple of voltage walks
% c.w. around the outside
q1=5-100*i(1)-150*i(1)-470*i(2)-680*i(3)+7-390*i(3)-270*i(3)-220*i(2)-330*i(1)
%c.w. around the center loop
q2=-3+180*i(4)-470*i(2)-560*i(5)-220*i(2)
%c.w. around the right hand side
q3=7-390*i(3)-270*i(3)+560*i(5)-680*i(3)
%{
q1 = 4.4409e-016
q2 = 1.3878e-016
q3 = 4.4409e-016
all are basicly 0 so it checks out
%}

%checking my work with Kirchoff's current law
%at c
k1=i(1)-i(4)-i(2)
%at g
k2=i(2)-i(5)-i(3)
%{
k1 = -1.1926e-018
k2 = 0
both are basicly 0 so it checks out
%}

 % and checking out the voltage drops across the resistors with v=ir
 hi=i(1)*100
 high=v(1)-v(2)
 g=i(5)*560
 gee=v(7)-v(6)
 hee=i(3)*270
 haw=v(10)-v(6)
 
%{
hi = 1.0712
high = 1.0712
g = -1.7536
gee = -1.7536
hee = 1.0571
haw = 1.0571
hi=high and g=gee AND hee=haw so all is well!
i could check more but i think this suffices
 %}

%experimental 
%vv is my experimental voltages
vv=[5.25 4.13 2.28 .515 3.49 3.66 1.99 -.615 6.18 4.69]';
%ii is my experimental currents in mA 
ii=[10.83 .85 3.85 10.07 -2.99]';
%iii is my experimental currents in A
iii=ii/1000;

%P=iv
P100=iii(1)*(vv(2)-vv(1));
P150=iii(1)*(vv(3)-vv(2));
P180=iii(4)*(vv(4)-vv(3));
P330=iii(1)*(0-vv(5));
P470=iii(2)*(vv(7)-vv(3));
P220=iii(2)*(vv(5)-vv(6));
P560=iii(5)*(vv(6)-vv(7));
P680=iii(3)*(vv(8)-vv(7));
P390=iii(3)*(vv(10)-vv(9));
P270=iii(3)*(vv(6)-vv(10));
P5=iii(1)*5;
P3=iii(4)*3;
P7=iii(3)*7;

Ptot=P100+P150+P180+P330+P470+P220+P560+P680+P390+P270+P5+P3+P7;

ANS3={'variable' 'value';
    'P100' P100 ;'P150' P150;'P180' P180 ;'P330' P330;
    'P470' P470 ;'P220' P220;'P560' P560 ;'P680' P680;
    'P390' P390 ;'P270' P270;'P3' P3;'P5' P5;'P7' P7;
    'Ptot' Ptot}

%{
Power supplied in Watts
(of course negitive power supplied is actually power absorbed)
ANS3 = 

    'variable'    'value'       
    'P100'        [     -0.0121]
    'P150'        [     -0.0200]
    'P180'        [     -0.0178]
    'P330'        [     -0.0378]
    'P470'        [-2.4650e-004]
    'P220'        [-1.4450e-004]
    'P560'        [     -0.0050]
    'P680'        [     -0.0100]
    'P390'        [     -0.0057]
    'P270'        [     -0.0040]
    'P3'          [      0.0302]
    'P5'          [      0.0541]
    'P7'          [      0.0270]
    'Ptot'        [     -0.0015]

i think more precice instruments would have helped the total power be closer to zero 
%}

% percent errors

err= (v-vv)./v*100

er= (i-iii)./i*100

ANS4={'variable' '% error in variable';
    'va' err(1) ;'vb' err(2);'vc' err(3) ;'vd' err(4);
    've' err(5) ;'vf' err(6);'vg' err(7) ;'vh' err(8);
    'vi' err(9) ;'vj' err(10);'i1' er(1);'i2' er(2);'i3' er(3);
    'i4' er(4);'i5' er(5);}

%{
percent errors
ANS4 = 

    'variable'    '% error in variable'
    'va'          [                 -5]
    'vb'          [            -5.1209]
    'vc'          [             1.8096]
    'vd'          [             3.7265]
    've'          [             1.2712]
    'vf'          [             1.2770]
    'vg'          [            -1.8583]
    'vh'          [            13.2133]
    'vi'          [             1.7701]
    'vj'          [             1.5625]
    'i1'          [            -1.1023]
    'i2'          [            -8.4637]
    'i3'          [             1.6650]
    'i4'          [            -1.4277]
    'i5'          [             4.5191]
%}