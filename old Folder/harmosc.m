%this program plots a matter wave packet
%version 2008-01-17 B.S.

clear all;

x=(-10*pi:pi/1000:10*pi)';

E=10/sqrt(2)*exp(-x.^2/(4*25));

F1=(E.*cos(pi*x));

figure;
hold on;

ttla=('Matter wave packet');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('x');
ylabel('Re f(x)');
axis([-25 25  -12 12]);

plot(x,E,'b.');
text(2,10,'envelope function=(e^-x^2/(2 x))','color','blue');
plot(x,F1,'r.');
text(3,-8,'inner function=(cos(k x))','color','red');

hold off