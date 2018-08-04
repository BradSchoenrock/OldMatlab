

clear all;

load('Final3.mat','-ascii');
x=Final3(:,1);
fx=Final3(:,2);

%{
ploting raw data
figure
hold on;
t1='Non-Linear Curve Fitting Final Exam #3\newline';
t2='Data Fitted to F(x) = a1 exp(a2*x)+a3 exp(a4*x)\newline';
name='B.D.Schoenrock - ';
t=[t1,t2,name,date];
title(t)
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

plot(x,fx,'r*')
hold off;
%}
%fitting data
a01= [ 5 1 5 1]
a02= [ 1 4.5 -3.5 4.3]

a1=fminsearch(@fn_SchoenrockFE_P3_NLexp,a01)
a2=fminsearch(@fn_SchoenrockFE_P3_NLsincos,a02)

a11=a1(1);
a21=a1(2);
a31=a1(3);
a41=a1(4);
a12=a2(1);
a22=a2(2);
a32=a2(3);
a42=a2(4);

xc=[min(x):(max(x)-min(x))/100:max(x)]';

ffx1=a11*exp(a21*x)+a31*exp(a41*x);
ss1=(fx-ffx1)'*(fx-ffx1);
fxc1=a11*exp(a21*xc)+a31*exp(a41*xc);

ffx2=a12*sin(a22*x)+a32*cos(a42*x);
ss2=(fx-ffx2)'*(fx-ffx2);
fxc2=a12*sin(a22*xc)+a32*cos(a42*xc);

la01=['guess = ',num2str(a01)];
la11=['a1 = ',num2str(a11)];
la21=['a2 = ',num2str(a21)];
la31=['a3 = ',num2str(a31)];
la41=['a4 = ',num2str(a41)];
lss1=['sm Sq = ',num2str(ss1)];
lssdp1=['sm Sq DP = ',num2str(ss1/size(fx,1))];
la02=['guess = ',num2str(a02)];
la12=['a1 = ',num2str(a12)];
la22=['a2 = ',num2str(a22)];
la32=['a3 = ',num2str(a32)];
la42=['a4 = ',num2str(a42)];
lss2=['sm Sq = ',num2str(ss2)];
lssdp2=['sm Sq DP = ',num2str(ss2/size(fx,1))];


figure
hold on;
t1='Non-Linear Curve Fitting Final Exam #3\newline';
t2='Data Fitted to F(x) = a1 exp(a2*x)+a3 exp(a4*x)\newline';
name='B.D.Schoenrock - ';
t=[t1,t2,name,date];
title(t)
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

plot(x,fx,'r*')
plot(xc,fxc1,'b')
plot(min(xc),max(fxc1),'w')
plot(min(xc),max(fxc1),'w')
plot(min(xc),max(fxc1),'w')
plot(min(xc),max(fxc1),'w')
plot(min(xc),max(fxc1),'w')
plot(min(xc),max(fxc1),'w')
plot(min(xc),max(fxc1),'w')

legend('raw data','fitted curve',la01,la11,la21,la31,la41,lss1,lssdp1,2);
legend('boxoff')


%ploting sin & cos
figure
hold on;
t1='Non-Linear Curve Fitting Final Exam #3\newline';
t2='Data Fitted to F(x) = a1 sin(a2*x)+a3 cos(a4*x)\newline';
name='B.D.Schoenrock - ';
t=[t1,t2,name,date];
title(t)
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

plot(x,fx,'r*')
plot(xc,fxc2,'b')
plot(min(xc),max(fxc2),'w')
plot(min(xc),max(fxc2),'w')
plot(min(xc),max(fxc2),'w')
plot(min(xc),max(fxc2),'w')
plot(min(xc),max(fxc2),'w')
plot(min(xc),max(fxc2),'w')
plot(min(xc),max(fxc2),'w')

legend('raw data','fitted curve',la02,la12,la22,la32,la42,lss2,lssdp2,2);
legend('boxoff')
