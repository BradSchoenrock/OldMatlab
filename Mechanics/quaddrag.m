%this program plots the motion of an underdamped spring
%with a quadratic resistive force and gives a phase diagram

clear all

A=1;
m=1;
k=4;
c=.4;
C=c/m;
w=sqrt(k/m);
ic=[A;0];
%defines some paramaters

[t,y]=ode45(@funkderivs3,[0 20],ic,[],C,w);
%ode stuff that calls funkderivs3 for a function

figure;
hold on;

ttla=('damped harmonic oscilator');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('time');
ylabel('x displacement');
axis([0 20  -2 2]);
%creates a figure and tells it how big to be, adds labels ect...

plot(t,y(:,1),'b-');
text(2,45,'x vs. t','color','blue');
%plots path of mass on spring

figure;
hold on;

ttla=('phase diagram');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('x position');
ylabel('velocity in x direction');
axis([-1 1  -2 2]);
%creates a figure and tells it how big to be, adds labels ect...

plot(y(:,1),y(:,2));
%plots phase diagram (v vs x)
