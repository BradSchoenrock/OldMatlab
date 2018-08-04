%this program plots the motion of an underdamped spring

clear all

A=1;
m=10;
k=250;
b=3;
B=b/(2*m);
w=sqrt(k/m);
ic=[A;0];
%defines some paramaters

[t,y]=ode45(@funkderivs2,[0 20],ic,[],B,w);
%ode stuff that calls funkderivs for a function

figure;
hold on;

ttla=('ode solved');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('time');
ylabel('x displacement');
axis([0 20  -2 2]);
%creates a figure and tells it how big to be, adds labels ect...

plot(t,y(:,1),'b-');
text(2,45,'x vs. t','color','blue');
%plots path of projectile with air resistance

f1=A*exp(-B*t);
plot(t,f1,'black-');
plot(t,-1*f1,'black-');

