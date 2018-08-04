%midterm problem 4

clear all;
load('midtermP4.mat','-ascii');
x=midtermP4(:,1);
fx=midtermP4(:,2);

figure
plot(x,fx)

a00= [-5 1 .5 10 .5 -.5]

a=fminsearch(@fn_for_SchoenrockME_P4,a00)

a1=a(1);
a2=a(2);
a3=a(3);
a4=a(4);
a5=a(5);
a6=a(6);

ffx=a1*cos(a2*x+a3)+a4*sin(a5*x+a6);
ss=(fx-ffx)'*(fx-ffx);
xc=[min(x):(max(x)-min(x))/100:max(x)]';
fxc=a1*cos(a2*xc+a3)+a4*sin(a5*xc+a6);

la00=['a00 = ',num2str(a00)];
la1=['a1 = ',num2str(a1)];
la2=['a2 = ',num2str(a2)];
la3=['a3 = ',num2str(a3)];
la4=['a4 = ',num2str(a4)];
la5=['a5 = ',num2str(a5)];
la6=['a6 = ',num2str(a6)];
lss=['sm Sq = ',num2str(ss)];
lssdp=['sm Sq DP = ',num2str(ss/size(fx,1))];

figure
hold on;
t1='Non-Linear Curve Fitting Midterm Problem 4';
t2='Data Fitted to F(x) = a1 cos(a2 x +a3) +a4 sin(a5 x +a6)';
name='B.D.Schoenrock - ';
t=[t1,'\newline',t2,'\newline',name,date];
title(t)
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

plot(x,fx,'r*')
plot(xc,fxc,'b')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')
plot(min(xc),max(fxc),'w')

legend('raw data','fitted curve',la00,la1,la2,la3,la4,la5,la6,lss,lssdp,2);
legend('boxoff')
