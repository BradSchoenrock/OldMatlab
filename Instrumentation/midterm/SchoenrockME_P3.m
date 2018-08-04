%B Schornock midterm problem 3

clear all;

x=[1.2 1.7 1.8 2 2.4 2.6 2.9]';
fx=[10.8042 1.2361 -3.1958 7 9.3511 -4.6489 -3.2361]';

g0=sin(3*3.14159*x);
g1=cos(5*3.14159*x);

al00=g0'*g0;
al01=g0'*g1;
al10=al01;
al11=g1'*g1;

b0=fx'*g0;
b1=fx'*g1;

Alpha=[al00 al01; 
    al10 al11;];

B=[b0 b1]';

A=Alpha\B;
a0=A(1)
a1=A(2)

xc=[min(x):(max(x)-min(x))/10000:max(x)]';
gc0=sin(3*3.14159*xc);
gc1=cos(5*3.14159*xc);
pc=a0*gc0+a1*gc1;

p=a0*g0+a1*g1;
er=p-fx;
ss=er'*er
ssdp=ss/size(x,1)

tt1='midterm problem 3\newline';
name='B.D.Schoenrock - ';
tt=[tt1,name,date];
la0=['a0 = ',num2str(a0)];
la1=['a1 = ',num2str(a1)];
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
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

legend('raw data','fitted curve',la0,la1,lss,lssdp,2);
legend('boxoff')

%{

%}
