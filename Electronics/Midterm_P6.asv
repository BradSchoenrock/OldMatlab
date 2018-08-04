
%Brad Schoenrock

clear all;

% node equations
a=[(1/16+1/200) -1/16 0 0 0 0;
    0 1 -1 0 0 0;
    -1/16 1/16 (1/12+1/3+1/6) -(1/3+1/6) 0 0;
    0 0 0 -1/10 (1/10+1/7) -1/7;
    0 0 -(1/6+1/3) (1/3+1/6+1/10) -1/10 0;
    0 0 0 0 0 -1; ];

b=[-2 8 (2-3) 3 0 28]';

x=a\b;

va=x(1);
vb=x(2);
vc=x(3);
vd=x(4);
ve=x(5);
vf=x(6);

test=a*x;


ANS={'variable' 'value' 'Exp B' 'Calc B';
    'va' va b(1) test(1);'vb' vb b(2) test(2);
    'vc' vc b(3) test(3);'vd' vd b(4) test(4);
    've' ve b(5) test(5);'vf' vf b(6) test(6);}


%{
ANS = 
    'variable'    'value'       'Exp B'    'Calc B'      
    'va'          [-43.6742]    [   -2]    [     -2.0000]
    'vb'          [-15.1681]    [    8]    [           8]
    'vc'          [-23.1681]    [   -1]    [          -1]
    'vd'          [-21.4662]    [    3]    [      3.0000]
    've'          [-12.9567]    [    0]    [-2.2204e-016]
    'vf'          [     -28]    [   28]    [          28]
%}
    


   
    
    
    
    
    
% Mesh equations
aa=[1 0 0 0 0;
   -16 (12+200+16) -12 0 0;
    0 -12 (12+3+10+7) -3 -10;
    0 0 -3 (6+3) -6;
    0 0 0 0 1; ];

bb=[2 -8 28 0 3]';
xx=aa\bb;

i1=xx(1);
i2=xx(2);
i3=xx(3);
i4=xx(4);
i5=xx(5);
test=aa*xx;

ANS2={'variable' 'value' 'Exp B' 'Calc B';
    'i1' i1 bb(1) test(1);'i2' i2 bb(2) test(2);
    'i3' i3 bb(3) test(3);'i4' i4 bb(4) test(4);
    'i5' i5 bb(5) test(5);}
%{
ANS2 = 
    'variable'    'value'     'Exp B'    'Calc B'      
    'i1'          [     2]    [    2]    [           2]
    'i2'          [0.2184]    [   -8]    [          -8]
    'i3'          [2.1490]    [   28]    [     28.0000]
    'i4'          [2.7163]    [    0]    [-3.5527e-015]
    'i5'          [     3]    [    3]    [           3]
%}
    
    % branch currents (doing it two ways to confirm results)
   % using the method of part c
   
   ia=i1-i2;
   ib=i2-i3;
   ic=i4-i3;
   id=i5-i3;
   ie=i4-i5;
  
   ANS3={'variable' 'value';
    'ia' ia ;'ib' ib ;'ic' ic ;'id' id ;'ie' ie ;}

%{
   ANS3 = 
    'variable'    'value'  
    'ia'          [ 1.7816]
    'ib'          [-1.9307]
    'ic'          [ 0.5673]
    'id'          [ 0.8510]
    'ie'          [-0.2837] 
%}

   % using voltage differences across the resistors
   ANS4={'variable' 'value';
    'iaa' (vb-va)/16 ;'ibb' (vc)/12;
    'icc' (vd-vc)/3;'idd' (ve-vd)/10;
    'iee' (vc-vd)/6;}

%{
    ANS4 = 
    'variable'    'value'  
    'iaa'         [ 1.7816]
    'ibb'         [-1.9307]
    'icc'         [ 0.5673]
    'idd'         [ 0.8510]
    'iee'         [-0.2837]
    
    ANS3=ANS4 which is good...
%}
    %powers of components
    p2a=(i1)*(vb-va);
    p3a=(i5)*(ve-vc);
    p8v=(-i2)*(vb-vc);
    p28v=(i3)*(0-vf);
    p16o=(ia)*(va-vb);
    p200o=(i2)*(va-0);
    p12o=(ib)*(0-vc);
    p6o=(ie)*(vd-vc);
    p3o=(ic)*(vc-vd);
    p10o=(id)*(vd-ve);
    p7o=(i3)*(vf-ve);
    ptot=p2a+p3a+p8v+p28v+p16o+p200o+p12o+p6o+p3o+p10o+p7o;
    
    ANS5={ 'variable' 'value';
        'p2a' p2a; 'p3a' p3a; 'p8v' p8v; 'p28v' p28v;
        'p16o' p16o; 'p200o' p200o; 'p12o' p12o;
        'p6o' p6o; 'p3o' p3o; 'p10o' p10o; 'p7o' p7o; 'ptot' ptot}
    %{
ANS5 = 
    'variable'    'value'   
    'p2a'         [ 57.0121]
    'p3a'         [ 30.6343]
    'p8v'         [ -1.7470]
    'p28v'        [ 60.1733]
    'p16o'        [-50.7872]
    'p200o'       [ -9.5372]
    'p12o'        [-44.7301]
    'p6o'         [ -0.4827]
    'p3o'         [ -0.9655]
    'p10o'        [ -7.2412]
    'p7o'         [-32.3288]
    'ptot'        [-1.4211e-014]
    %}
        
    vda=vd-va
    vfc=vf-vc

%{
vda = 22.2080
vfc = -4.8319
%}