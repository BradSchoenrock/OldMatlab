%this program plots a function and it's derivitive
%version 2008-01-17 B.S.

clear all;
%clears everything for good measure


x=(0:.1:10)';
%defines a few variables to use

f1=x.*exp(-x/2);
%this is the acceleration function

f2=-2*x.*exp(-x/2)-4.*exp(-x/2)+4;
%the velocity function

f3=8.*exp(-x/2).*(x/2+2)+8*x/2-8*2;
%the position function

figure;
hold on;

ttla=('positoin, velocity, and acceleration');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('t in seconds');
ylabel('f(x)');
axis([0  5  -1 5]);
%sets up graph

plot(x,f1,'b.');
plot(x,f2,'r*');
plot(x,f3,'black-');
legend('acceleration','velocity','position',2);

hold off