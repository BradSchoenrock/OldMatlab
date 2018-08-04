%program to determine coeficiants of a 3rd order polynomial
clear all;



x=[0.1 1 2 4 6 8 10]';
fx=[.9998 .9986 .9975 .9962 .9962 .9972 .9993]';

g0=x.^0;
g1=x.^1;
g2=x.^2;

al00=g0'*g0;
al01=g0'*g1;
al02=g0'*g2;
al10=al01;
al11=g1'*g1;
al12=g1'*g2;
al20=al02;
al21=al12;
al22=g2'*g2;

b0=fx'*g0;
b1=fx'*g1;
b2=fx'*g2;

Alpha=[al00 al01 al02; 
    al10 al11 al12; 
    al20 al21 al22;];

B=[b0 b1 b2]';

A=Alpha\B;
a0=A(1)
a1=A(2)
a2=A(3)

xc=[min(x):(max(x)-min(x))/10000:max(x)]';
gc0=xc.^0;
gc1=xc.^1;
gc2=xc.^2;
pc=a0*gc0+a1*gc1+a2*gc2;

p=a0*g0+a1*g1+a2*g2;
er=p-fx;
ss=er'*er
ssdp=ss/size(x,1)

tt1='Linear Curve Fitting for second and third virial coefficants';
name='B.D.Schoenrock - ';
tta=[tt1,'\newline'];
tt=[tta,name,date];
la0=['a0 = ',num2str(a0)];
la1=['a1 = ',num2str(a1)];
la2=['a2 = ',num2str(a2)];
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
xlabel('Pressures in MPa')
ylabel('compressibility Z')


legend('raw data','fitted curve',la0,la1,la2,lss,lssdp,2);
legend('boxoff')

%{
a0 = 0.9999 this is the intercept (should be 1)
a1 = -0.0015 second virial coefficiant
a2 = 1.4265e-004 third virial coefficiant
ss = 1.0475e-008 sum of squares
ssdp = 1.4964e-009 sum of squares per data point
%}