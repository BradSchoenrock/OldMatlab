%this program plots a function and it's derivitive
%version 2008-01-17 B.S.

clear all;
A=1;
m=10;
k=250;
b=3;
B=b/(2*m);
w=sqrt(k/m);
t=(0:.01:20)';
%defines a few variables to use

F0=A*exp(-B*t)*cos(sqrt(w.^2+B.^2)*t);

figure;
hold on;

ttla=('hmmmm');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('t');
ylabel('x displacement');
axis([-1  2  -10 20]);
%sets up graph

plot(t,F0,'black');

hold off