%fitting the data to sines and cosines
clear all;

load('Final3.mat','-ASCII');
x=Final3(:,1);
fx=Final3(:,2);

g0=sin(1*x);
g1=sin(2*x);
g2=sin(3*x);
g3=sin(4*x);
g4=sin(5*x);
g5=cos(1*x);
g6=cos(2*x);
g7=cos(3*x);
g8=cos(4*x);
g9=cos(5*x);

al00=g0'*g0;
al01=g0'*g1;
al02=g0'*g2;
al03=g0'*g3;
al04=g0'*g4;
al05=g0'*g5;
al06=g0'*g6;
al07=g0'*g7;
al08=g0'*g8;
al09=g0'*g9;
al10=al01;
al11=g1'*g1;
al12=g1'*g2;
al13=g1'*g3;
al14=g1'*g4;
al15=g1'*g5;
al16=g1'*g6;
al17=g1'*g7;
al18=g1'*g8;
al19=g1'*g9;
al20=al02;
al21=al12;
al22=g2'*g2;
al23=g2'*g3;
al24=g2'*g4;
al25=g2'*g5;
al26=g2'*g6;
al27=g2'*g7;
al28=g2'*g8;
al29=g2'*g9;
al30=al03;
al31=al13;
al32=al23;
al33=g3'*g3;
al34=g3'*g4;
al35=g3'*g5;
al36=g3'*g6;
al37=g3'*g7;
al38=g3'*g8;
al39=g3'*g9;
al40=al04;
al41=al14;
al42=al24;
al43=al34;
al44=g4'*g4;
al45=g4'*g5;
al46=g4'*g6;
al47=g4'*g7;
al48=g4'*g8;
al49=g4'*g9;
al50=al05;
al51=al15;
al52=al25;
al53=al35;
al54=al45;
al55=g5'*g5;
al56=g5'*g6;
al57=g5'*g7;
al58=g5'*g8;
al59=g5'*g9;
al60=al06;
al61=al16;
al62=al26;
al63=al36;
al64=al46;
al65=al56;
al66=g6'*g6;
al67=g6'*g7;
al68=g6'*g8;
al69=g6'*g9;
al70=al07;
al71=al17;
al72=al27;
al73=al37;
al74=al47;
al75=al57;
al76=al67;
al77=g7'*g7;
al78=g7'*g8;
al79=g7'*g9;
al80=al08;
al81=al18;
al82=al28;
al83=al38;
al84=al48;
al85=al58;
al86=al68;
al87=al78;
al88=g8'*g8;
al89=g8'*g9;
al90=al09;
al91=al19;
al92=al29;
al93=al39;
al94=al49;
al95=al59;
al96=al69;
al97=al79;
al98=al89;
al99=g9'*g9;


b0=fx'*g0;
b1=fx'*g1;
b2=fx'*g2;
b3=fx'*g3;
b4=fx'*g4;
b5=fx'*g5;
b6=fx'*g6;
b7=fx'*g7;
b8=fx'*g8;
b9=fx'*g9;

Alpha=[al00 al01 al02 al03 al04 al05 al06 al07 al08 al09; 
    al10 al11 al12 al13 al14 al15 al16 al17 al18 al19; 
    al20 al21 al22 al23 al24 al25 al26 al27 al28 al29;
    al30 al31 al32 al33 al34 al35 al36 al37 al38 al39;
    al40 al41 al42 al43 al44 al45 al46 al47 al48 al49;
    al50 al51 al52 al53 al54 al55 al56 al57 al58 al59;
    al60 al61 al62 al63 al64 al65 al66 al67 al68 al69;
    al70 al71 al72 al73 al74 al75 al76 al77 al78 al79;
    al80 al81 al82 al83 al84 al85 al86 al87 al88 al89;
    al90 al91 al92 al93 al94 al95 al96 al97 al98 al99;];

B=[b0 b1 b2 b3 b4 b5 b6 b7 b8 b9]';

A=Alpha\B;
a1=A(1)
a2=A(2)
a3=A(3)
a4=A(4)
a5=A(5)
a6=A(6)
a7=A(7)
a8=A(8)
a9=A(9)
a10=A(10)

xc=[min(x):(max(x)-min(x))/100:max(x)]';
gc0=sin(xc);
gc1=sin(2*xc);
gc2=sin(3*xc);
gc3=sin(4*xc);
gc4=sin(5*xc);
gc5=cos(1*xc);
gc6=cos(2*xc);
gc7=cos(3*xc);
gc8=cos(4*xc);
gc9=cos(5*xc);

pc=a1*gc0+a2*gc1+a3*gc2+a4*gc3+a5*gc4+a6*gc5+a7*gc6+a8*gc7+a9*gc8+a10*gc9;

p=a1*g0+a2*g1+a3*g2+a4*g3+a5*g4+a6*g5+a7*g6+a8*g7+a9*g8+a10*g9;
er=p-fx;
ss=er'*er
ssdp=ss/size(x,1)

tt1='Final Problem 3 My Fit\newline';
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
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')
plot(min(xc),min(xc),'w')

xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

legend('raw data','linear fit',['a1= ' num2str(a1)],['a2= ' num2str(a2)],['a3= ' num2str(a3)],['a4= ' num2str(a4)],['a5= ' num2str(a5)],['a6= ' num2str(a6)],['a7= ' num2str(a7)],['a8= ' num2str(a8)],['a9= ' num2str(a9)],['a10= ' num2str(a10)],['ss=' num2str(ss)], ['ssdp= ' num2str(ssdp)],1);
legend('boxoff')

hold off;
