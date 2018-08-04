%this program plots the motion of a stiff pendulum with drag

clear all;
A=pi/12;
m=.425;
M=.345;
l=.35;
g=9.8;
b=.2;
B=.25*b/l/(m+1/3*M);
w=sqrt(g/l*(m+.5*M)/(m+1/3*M));
t=(0:.01:5)';
%defines a few variables to use

F0=A*exp(-B*t).*cos(w*t);
F1=A*exp(-B*t);
F2=A*-B.*exp(-B*t).*cos(w*t)+A.*exp(-B*t).*-w.*sin(w*t);


figure;
hold on;

ttla=('\theta vs. \omega ');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('\omega velocity in radians per second');
ylabel('\theta displacement in radians');
axis([-2  2  -.4 .4]);
%sets up graph

plot(F2,F0,'b-');

hold off;

figure;
hold on;

ttla=('\theta vs. time ');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('time in seconds');
ylabel('\theta displacement in radians');
axis([0  5  -.4 .4]);
%sets up graph

plot(t,F0,'b-');
plot(t,F1,'black-');
plot(t,-F1,'black-');

hold off