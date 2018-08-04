%this program plots the motion of a stiff pendulum

clear all;
A=.25;
m=.425;
M=.345;
l=.35;
g=9.8;
w=sqrt(g/l*(m+.5*M)/(m+1/3*M));
t=(0:.01:7.5)';
%defines a few variables to use

F0=A*cos(w*t);


figure;
hold on;

ttla=('\theta vs. time');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('time');
ylabel('\theta displacement in radians');
axis([0  7.5  -.5 .5]);
%sets up graph

plot(t,F0,'b-');

hold off