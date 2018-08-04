%{
finds a best fit quadratic or cubic line for index of 
refraction vs. wavelength
version 2008 14 February
Brad Schoenrock
%}


clear all;

y= [404.7;435.8;491.6;496.0;546.1;577.0;579.1;623.4;690.7];

x= [1.768;1.755;1.742;1.741;1.731;1.727;1.727;1.725;1.717];

m(:,2)=x;
m(:,1)=ones(size(x));
m(:,3)=x.^2;
d=m\y;

n(:,2)=x;
n(:,1)=ones(size(x));
n(:,3)=x.^2;
n(:,4)=x.^3;
c=n\y;

xp=[min(x):(max(x)-min(x))/100 :max(x)]';
jp=d(1)+d(2)*xp+d(3)*xp.^2;
yp=c(1)+c(2)*xp+c(3)*xp.^2+c(4)*xp.^3;

figure;
hold on
plot(x,y,'r*');
plot(xp,jp,'b-');
plot(xp,yp,'g--');
plot(max(x),max(y),'w.')
plot(max(x),max(y),'w.')
t1='Best quadratic fit and cubic Fit Line';
t3='Brad Schoenrock'
t0='\newline';
t=[t1,t0,t3,date];
title(t)
xlabel('index of refractoin')
ylabel('\lambda in nanometers')

xh=[1.755;1.741;1.727;1.719];
jh=c(1)+c(2)*xh+c(3)*xh.^2+c(4)*xh.^3

xhe=[1.755;1.754;1.752;1.746;1.741;1.737;1.726;1.719;1.716];
jhe=c(1)+c(2)*xhe+c(3)*xhe.^2+c(4)*xhe.^3

ans={'hydrogen' 'wavelength ' 'helium' 'wavelength ';
xh(1) jh(1) xhe(1) jhe(1);
xh(2) jh(2) xhe(2) jhe(2);
xh(3) jh(3) xhe(3) jhe(3);
xh(4) jh(4) xhe(4) jhe(4);
'n/a ' 'n/a ' xhe(5) jhe(5);
' ' ' '  xhe(6) jhe(6);
' ' ' '  xhe(7) jhe(7);
' ' ' '  xhe(8) jhe(8);
' ' ' '  xhe(9) jhe(9)};
ans
Coef={'coefficient' 'quadratic' 'cubic';
        'c1' d(1) c(1);
        'c2' d(2) c(2);
        'c3' d(3) c(3);
        'c4' ' ' c(4)};
    Coef
   
%{    
    jh =

  439.3105
  492.1313
  585.8723
  667.9111


jhe =

  439.3105
  442.2859
  448.4996
  469.9322
  492.1313
  513.5912
  594.8274
  667.9111
  705.3294


ans = 

    'hydrogen'    'wavelength '    'helium'    'wavelength '
    [  1.7550]    [   439.3105]    [1.7550]    [   439.3105]
    [  1.7410]    [   492.1313]    [1.7540]    [   442.2859]
    [  1.7270]    [   585.8723]    [1.7520]    [   448.4996]
    [  1.7190]    [   667.9111]    [1.7460]    [   469.9322]
    'n/a '        'n/a '           [1.7410]    [   492.1313]
    ' '           ' '              [1.7370]    [   513.5912]
    ' '           ' '              [1.7260]    [   594.8274]
    ' '           ' '              [1.7190]    [   667.9111]
    ' '           ' '              [1.7160]    [   705.3294]


Coef = 

    'coefficient'    'quadratic'       'cubic'       
    'c1'             [ 3.0918e+005]    [ 8.7378e+006]
    'c2'             [-3.4892e+005]    [-1.4864e+007]
    'c3'             [ 9.8572e+004]    [ 8.4304e+006]
    'c4'             ' '               [-1.5941e+006]
    
 %}