%program to determine coeficiants of a 5th order polynomial
clear all;

load('p4lincrvh.mat','-ascii');

x=p4lincrvh(:,1);
fx=p4lincrvh(:,2);

g0=x.^0;
g1=x.^1;
g2=x.^2;
g3=x.^3;
g4=x.^4;
g5=x.^5;

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
al31=al13;
al32=al23;
al33=g3'*g3;
al34=g3'*g4;
al35=g3'*g5
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

Alpha=[al00 al01 al02 al03 al04 al05; 
    al10 al11 al12 al13 al14 al15; 
    al20 al21 al22 al23 al24 al25;
    al30 al31 al32 al33 al34 al35;
    al40 al41 al42 al43 al44 al45;
    al50 al51 al52 al53 al54 al55;];

B=[b0 b1 b2 b3 b4 b5]';

A=Alpha\B;
a0=A(1)
a1=A(2)
a2=A(3)
a3=A(4)
a4=A(5)
a5=A(6)

xc=[min(x):(max(x)-min(x))/10000:max(x)]';
gc0=xc.^0;
gc1=xc.^1;
gc2=xc.^2;
gc3=xc.^3;
gc4=xc.^4;
gc5=xc.^5;
pc=a0*gc0+a1*gc1+a2*gc2+a3*gc3+a4*gc4+a5*gc5;

p=a0*g0+a1*g1+a2*g2+a3*g3+a4*g4+a5*g5;
er=p-fx;
ss=er'*er
ssdp=ss/size(x,1)

tt1='Linear Curve Fitting with polynomials\newline5th order fit-problem 3';
name='B.D.Schoenrock - ';
tta=[tt1,'\newline'];
tt=[tta,name,date];
la0=['a0 = ',num2str(a0)];
la1=['a1 = ',num2str(a1)];
la2=['a2 = ',num2str(a2)];
la3=['a3 = ',num2str(a3)];
la4=['a4 = ',num2str(a4)];
la5=['a5 = ',num2str(a5)];
lss=['sm Sq = ',num2str(ss)];
lssdp=['sm Sq DP = ',num2str(ssdp)];

figure
hold on;
title(tt);
plot(x,fx,'b*')
plot(xc,pc,'r')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
plot(max(x),min(fx),'w.')
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

legend('raw data','fitted curve',la0,la1,la2,la3,la4,la5,lss,lssdp,2);
legend('boxoff')

%{
a0 = -112.9807
a1 = -1.4742
a2 = -264.8171
a3 = 2.2801
a4 = 2.1255
a5 = 0.0019
ss = 1.6182e+007
ssdp = 1.6683e+005
%}
