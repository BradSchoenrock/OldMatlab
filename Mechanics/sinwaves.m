%this program plots some sin waves
%version 2008-9-04 B.S.

clear all;
% clears everything for good measure

x=(0:1:2.5);
y=(0:.5:2.5);
z=(0:.1:2.5);
a=(0:.05:2.5);
b=(0:.01:2.5);
%this defines our range of data points and steps in data points

f1=sin(4*x);
f2=sin(4*y);
f3=sin(4*z);
f4=sin(4*a);
f5=sin(4*b);
%defines our function


figure;
hold on;

ttla=('function 1');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('x');
ylabel('f(x)');
axis([0 2.5  -2 2]);
%creates a figure and tells it how big to be, adds labels ect...

plot(b,f5,'black');
text(1.8,1.9,'steps of .01','color','black');
plot(a,f4,'b');
text(1.8,1.7,'steps of .05','color','blue');
plot(z,f3,'g');
text(1.8,1.5,'steps of .1','color','green');
plot(y,f2,'r');
text(1.8,1.3,'steps of .5','color','red');
plot(x,f1,'y');
text(1.8,1.1,'steps of 1','color','yellow');
%plots and labels our actual functions

hold off