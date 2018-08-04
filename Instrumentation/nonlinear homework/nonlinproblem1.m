%problem 1

clear all;
load('nlexp.mat','-ascii');
x=nlexp(:,1);
fx=nlexp(:,2);

figure
plot(x,fx)
t1='nonlinear fitting problem 1\newline';
name='B.D. Schoenrock - ';
t=[t1,name,date];
title(t)
xlabel('x in unitless numbers')
ylabel('f(x) in unitless numbers')

a00= [1 1 10]
%a00= [.01 .005 0]

a=fminsearch(@fnnonlinproblem1,a00)

a1=a(1);
a2=a(2);
a3=a(3);

ffx=a1*(exp(a2*x)-a3);
ss=(fx-ffx)'*(fx-ffx);
ssdp=ss/size(fx,1)
xc=[min(x):(max(x)-min(x))/100:max(x)]';
fxc=a1*(exp(a2*xc)-a3);

la00=['a00 = ',num2str(a00)];
la0=['a1 = ',num2str(a1)];
la1=['a2 = ',num2str(a2)];
la2=['a3 = ',num2str(a3)];
lss=['sm Sq = ',num2str(ss)];
lssdp=['sm Sq DP = ',num2str(ssdp)];

figure
hold on;
t1='nonlinear fitting problem 1';
t2='Data Fitted to F(x) = a1[exp(a2*x)-a3]';
name='B.D. Schoenrock - ';
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

legend('raw data','fitted curve',la00,la0,la1,la2,lss,lssdp,2);
legend('boxoff')

%{
a00 = 1     1    10
a = 11.0647    0.4889    3.1812
ssdp = 227.8063

a00 = 0.0100    0.0050         0
a = 11.0647    0.4889    3.1812
ssdp = 227.8063
%}
