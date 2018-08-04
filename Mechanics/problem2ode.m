%this program plots the motion of an underdamped spring 
%in a viscous medium

clear all

A=5*pi/6;
m=.425;
M=.345;
l=.350;
g=9.8;
b=.2;
B=.5*b/l/l/(m+1/3*M);
w=sqrt(g/l*(m+.5*M)/(m+1/3*M));
ic=[A;0];
%defines some paramaters

[t,y]=ode45(@funkderivs5,[0 5],ic,[],B,w);
%ode stuff that calls funkderivs for a function

figure;
hold on;

ttla=('ode solved');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('time in seconds');
ylabel('\theta displacement in radians');
axis([0 5  -3 3]);
%creates a figure and tells it how big to be, adds labels ect...

plot(t,y(:,1),'b-');
%plots angular displacement vs. time

hold off;

figure;
hold on;

ttla=('ode solved');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('angular velocity \omega in rad/sec');
ylabel('\theta displacement in radians');
axis([-8 8  -3 3]);
%creates anothor figure and tells it how big to be, adds labels ect...

plot(y(:,2),y(:,1),'b-'); 
%plots angular velocity vs. angular displacement
