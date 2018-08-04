%this program plots the motion of an underdamped spring

clear all;
A=1;
m=10;
k=250;
b=3;
B=b/(2*m);
w=sqrt(k/m);
t=(0:.01:20)';
%defines a few variables to use

F0=A.*exp(-B*t).*cos(sqrt(w.^2+B.^2)*t);
F1=A.*exp(-B*t);

figure;
hold on;

ttla=('by hand');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('t');
ylabel('x displacement');
axis([0  20  -2 2]);
%sets up graph

plot(t,F0,'b-');
plot(t,F1,'black-');
plot(t,-F1,'black-');


hold off