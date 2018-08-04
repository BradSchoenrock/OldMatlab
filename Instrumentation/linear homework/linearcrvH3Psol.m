%Program to Solve Problem 3 for Linear Curve Fitting Homework
%version 2007-10-05 D.W. Donovan
clear all;
load('p4lincrvh.mat','-ascii');
x=p4lincrvh(:,1);
fx=p4lincrvh(:,2);

g5=x.^5;
g4=x.^4;
g3=x.^3;
g2=x.^2;
g1=x.^1;
g0=x.^0;

al00=g0'*g0;
al01=g0'*g1;
al02=g0'*g2;
al03=g0'*g3;
al04=g0'*g4;
al05=g0'*g5;

al10=al01;
al11=g1'*g1;
al12=g1'*g2;
al13=g1'*g3;
al14=g1'*g4;
al15=g1'*g5;

al20=al02;
al21=al12;
al22=g2'*g2;
al23=g2'*g3;
al24=g2'*g4;
al25=g2'*g5;

al30=al03;
al31=al12;
al32=al23;
al33=g3'*g3;
al34=g3'*g4;
al35=g3'*g5;

al40=al04;
al41=al14;
al42=al24;
al43=al34;
al44=g4'*g4;
al45=g4'*g5;

al50=al05;
al51=al15;
al52=al25;
al53=al35;
al54=al45;
al55=g5'*g5;

b0=fx'*g0;
b1=fx'*g1;
b2=fx'*g2;
b3=fx'*g3;
b4=fx'*g4;
b5=fx'*g5;

alpha3=[al00 al01 al02 al03;
    al10 al11 al12 al13;
    al20 al21 al22 al23;
    al30 al31 al32 al33];

B3=[b0 b1 b2 b3]';

alpha4=[alpha3(1,:) al04;
    alpha3(2,:) al14;
    alpha3(3,:) al24;
    alpha3(4,:) al34;
    al40 al41 al42 al43 al44];
B4=[B3' b4]';

alpha5=[alpha4(1,:) al05;
    alpha4(2,:) al15;
    alpha4(3,:) al25;
    alpha4(4,:) al35;
    alpha4(5,:) al45;
    al50 al51 al52 al53 al54 al55];
B5=[B4' b5]';

A3=alpha3\B3;
p3=A3(1)*g0+A3(2)*g1+A3(3)*g2+A3(4)*g3;
er3=p3-fx;
ss3=er3'*er3;

A4=alpha4\B4;
p4=A4(1)*g0+A4(2)*g1+A4(3)*g2+A4(4)*g3+A4(5)*g4;
er4=p4-fx;
ss4=er4'*er4;

A5=alpha5\B5;
p5=A5(1)*g0+A5(2)*g1+A5(3)*g2+A5(4)*g3+A5(5)*g4+A5(6)*g5;
er5=p5-fx;
ss5=er5'*er5;

name='D.W. Donovan';

tt41='Linear Curve Fitting Homework Problem #3 using polynomials to order 4';
tt4=[tt41,'  ',' \newline ',name,'   ',date];
l4a0=['a0 = ',num2str(A4(1))];
l4a1=['a1 = ',num2str(A4(2))];
l4a2=['a2 = ',num2str(A4(3))];
l4a3=['a3 = ',num2str(A4(4))];
l4a4=['a4 = ',num2str(A4(5))];
l4ss=['sm Sq = ',num2str(ss4)];
l4ssdp=['sm Sq DP = ',num2str(ss4/size(fx,1))];

figure
hold on;
title(tt4);
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

plot(x,fx,'b*')
plot(x,p4,'r')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')

legend('raw data','fitted curve',l4a0,l4a1,l4a2,l4a3,l4a4,l4ss,l4ssdp,2);
legend('boxoff')

tt31='Linear Curve Fitting Homework Problem #3 using polynomials to order 3';
tt3=[tt31,'  ',' \newline ',name,'   ',date];
l3a0=['a0 = ',num2str(A3(1))];
l3a1=['a1 = ',num2str(A3(2))];
l3a2=['a2 = ',num2str(A3(3))];
l3a3=['a3 = ',num2str(A3(4))];
l3ss=['sm Sq = ',num2str(ss3)];
l3ssdp=['sm Sq DP = ',num2str(ss3/size(fx,1))];

figure
hold on;
title(tt3);
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

plot(x,fx,'b*')
plot(x,p3,'r')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')

legend('raw data','fitted curve',l3a0,l3a1,l3a2,l3a3,l3ss,l3ssdp,2);
legend('boxoff')

tt51='Linear Curve Fitting Homework Problem #3 using polynomials to order 5';
tt5=[tt51,'  ',' \newline ',name,'   ',date];
l5a0=['a0 = ',num2str(A5(1))];
l5a1=['a1 = ',num2str(A5(2))];
l5a2=['a2 = ',num2str(A5(3))];
l5a3=['a3 = ',num2str(A5(4))];
l5a4=['a4 = ',num2str(A5(5))];
l5a5=['a5 = ',num2str(A5(6))];
l5ss=['sm Sq = ',num2str(ss5)];
l5ssdp=['sm Sq DP = ',num2str(ss5/size(fx,1))];

figure
hold on;
title(tt5);
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

plot(x,fx,'b*')
plot(x,p5,'r')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')

legend('raw data','fitted curve',l5a0,l5a1,l5a2,l5a3,l5a4,l5a5,l5ss,l5ssdp,2);
legend('boxoff')
Sol={'items' '4 - parm' '3 - parm' '5 - parm';
    'a0' A4(1) A3(1) A5(1);
    'a1' A4(2) A3(2) A5(2);
    'a2' A4(3) A3(3) A5(3);
    'a3' A4(4) A3(4) A5(4);
    'a4' A4(5) 'n/a' A5(5);
    'a5' 'n/a' 'n/a' A5(6);
    'ss' ss4 ss3 ss5;
    'ssdp' ss4/size(fx,1) ss3/size(fx,1) ss5/size(fx,1)};
Sol
%{
Sol = 

    'items'    '4 - parm'       '3 - parm'        '5 - parm'   
    'a0'       [  -112.9807]    [-4.0465e+003]    [  -112.9807]
    'a1'       [    -1.7834]    [     -1.7834]    [    -0.0347]
    'a2'       [  -264.8171]    [      2.9012]    [  -264.8171]
    'a3'       [     2.4814]    [      2.4814]    [     2.2381]
    'a4'       [     2.1255]    'n/a'             [     2.1255]
    'a5'       'n/a'            'n/a'             [     0.0021]
    'ss'       [1.6296e+007]    [ 1.2009e+009]    [1.6183e+007]
    'ssdp'     [1.6800e+005]    [ 1.2380e+007]    [1.6684e+005]
%}