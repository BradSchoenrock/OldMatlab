%5th order polynomial
clear all;

load('Final3.mat','-ASCII');
x=Final3(:,1);
fx=Final3(:,2);

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

Alpha=[al00 al01 al02 al03 al04 al05; 
    al10 al11 al12 al13 al14 al15; 
    al20 al21 al22 al23 al24 al25;
    al30 al31 al32 al33 al34 al35;
    al40 al41 al42 al43 al44 al45;
    al50 al51 al52 al53 al54 al55;];

B=[b0 b1 b2 b3 b4 b5]';

A=Alpha\B;
a1=A(1)
a2=A(2)
a3=A(3)
a4=A(4)
a5=A(5)
a6=A(6)

xc=[min(x):(max(x)-min(x))/100:max(x)]';
gc0=xc.^0;
gc1=xc.^1;
gc2=xc.^2;
gc3=xc.^3;
gc4=xc.^4;
gc5=xc.^5;
pc=a1*gc0+a2*gc1+a3*gc2+a4*gc3+a5*gc4+a6*gc5;

p=a1*g0+a2*g1+a3*g2+a4*g3+a5*g4+a6*g5;
er=p-fx;
ss=er'*er
ssdp=ss/size(x,1)

tt1='Final Exam 3\newline';
name='B.D.Schoenrock - ';
tt=[tt1,name,date];

figure
hold on;
title(tt);
plot(x,fx,'k*')
plot(xc,pc,'k-')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')

xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

legend('raw data','fifth order fit',['a1= ' num2str(a1)],['a2= ' num2str(a2)],['a3= ' num2str(a3)],['a4= ' num2str(a4)],['a5= ' num2str(a5)],['a6= ' num2str(a6)],['ss=' num2str(ss)], ['ssdp= ' num2str(ssdp)],1);
legend('boxoff')

hold off;
%{
a1 = 1.0955
a2 = 0.1438
a3 = -0.5735
a4 = 0.2012
a5 = -0.0257
a6 = 0.0011
ss = 585.8841
ssdp = 5.8588
%}



%4th order polynomial

Alpha=[al00 al01 al02 al03 al04; 
    al10 al11 al12 al13 al14; 
    al20 al21 al22 al23 al24;
    al30 al31 al32 al33 al34;
    al40 al41 al42 al43 al44;];

B=[b0 b1 b2 b3 b4]';

A=Alpha\B;
a1=A(1)
a2=A(2)
a3=A(3)
a4=A(4)
a5=A(5)

pc=a1*gc0+a2*gc1+a3*gc2+a4*gc3+a5*gc4;

p=a1*g0+a2*g1+a3*g2+a4*g3+a5*g4;
er=p-fx;
ss=er'*er
ssdp=ss/size(x,1)

figure
hold on;
title(tt);
plot(x,fx,'k*')
plot(xc,pc,'k-')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')

xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

legend('raw data','4th order fit',['a1= ' num2str(a1)],['a2= ' num2str(a2)],['a3= ' num2str(a3)],['a4= ' num2str(a4)],['a5= ' num2str(a5)],['ss=' num2str(ss)], ['ssdp= ' num2str(ssdp)],1);
legend('boxoff')

hold off;
%{
a1 = 1.6075
a2 = -1.2781
a3 = 0.3925
a4 = -0.0519
a5 = 0.0024
ss = 587.6500
ssdp = 5.8765
%}




%3rd Order polynomial
Alpha=[al00 al01 al02 al03; 
    al10 al11 al12 al13; 
    al20 al21 al22 al23;
    al30 al31 al32 al33;];

B=[b0 b1 b2 b3]';

A=Alpha\B;
a1=A(1)
a2=A(2)
a3=A(3)
a4=A(4)

pc=a1*gc0+a2*gc1+a3*gc2+a4*gc3;

p=a1*g0+a2*g1+a3*g2+a4*g3;
er=p-fx;
ss=er'*er
ssdp=ss/size(x,1)

figure
hold on;
title(tt);
plot(x,fx,'k*')
plot(xc,pc,'k-')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')

xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

legend('raw data','cubic fit',['a1= ' num2str(a1)],['a2= ' num2str(a2)],['a3= ' num2str(a3)],['a4= ' num2str(a4)],['ss=' num2str(ss)], ['ssdp= ' num2str(ssdp)],1);
legend('boxoff')

hold off;

%{
a1 = 1.2223
a2 = -0.5479
a3 = 0.0709
a4 = -0.0026
ss = 589.0001
ssdp = 5.8900
%}




%2nd Order polynomial
Alpha=[al00 al01 al02; 
    al10 al11 al12; 
    al20 al21 al22;];

B=[b0 b1 b2]';

A=Alpha\B;
a1=A(1)
a2=A(2)
a3=A(3)

pc=a1*gc0+a2*gc1+a3*gc2;

p=a1*g0+a2*g1+a3*g2;
er=p-fx;
ss=er'*er
ssdp=ss/size(x,1)

figure
hold on;
title(tt);
plot(x,fx,'k*')
plot(xc,pc,'k-')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')

xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

legend('raw data','quadratic fit',['a1= ' num2str(a1)],['a2= ' num2str(a2)],['a3= ' num2str(a3)],['ss=' num2str(ss)], ['ssdp= ' num2str(ssdp)],1);
legend('boxoff')

hold off;
%{
a1 = 1.0856
a2 = -0.3894
a3 = 0.0318
ss = 589.2370
ssdp = 5.8924
%}

%line
Alpha=[al00 al01; 
    al10 al11];

B=[b0 b1]';

A=Alpha\B;
a1=A(1)
a2=A(2)

pc=a1*gc0+a2*gc1;

p=a1*g0+a2*g1;
er=p-fx;
ss=er'*er
ssdp=ss/size(x,1)

figure
hold on;
title(tt);
plot(x,fx,'k*')
plot(xc,pc,'k-')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')

xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

legend('raw data','linear fit',['a1= ' num2str(a1)],['a2= ' num2str(a2)],['ss=' num2str(ss)], ['ssdp= ' num2str(ssdp)],1);
legend('boxoff')

hold off;

%{
a1 = 0.5390
a2 = -0.0678
ss = 594.8639
ssdp = 5.9486
%}



%{
to reiterate my answers

fifth order
a1 = 1.0955
a2 = 0.1438
a3 = -0.5735
a4 = 0.2012
a5 = -0.0257
a6 = 0.0011
ss = 585.8841
ssdp = 5.8588

fourth order
a1 = 1.6075
a2 = -1.2781
a3 = 0.3925
a4 = -0.0519
a5 = 0.0024
ss = 587.6500
ssdp = 5.8765

third order
a1 = 1.2223
a2 = -0.5479
a3 = 0.0709
a4 = -0.0026
ss = 589.0001
ssdp = 5.8900

second order
a1 = 1.0856
a2 = -0.3894
a3 = 0.0318
ss = 589.2370
ssdp = 5.8924

linear
a1 = 0.5390
a2 = -0.0678
ss = 594.8639
ssdp = 5.9486
%}

