%this program plots a function and it's derivitive
%version 2008-01-17 B.S.

clear all;
%clears everything for good measure
h1=5;
h2=4;
h3=3;
h4=2;
h5=1;
h6=.1;
h7=.001;
x=(-1:.01:2)';
%defines a few variables to use

F0=x.^2-8*x+9;
%this is the actual function
F1=((((x+h1).^2-8*(x+h1)+9)-(x.^2-8*x+9))/h1);
F2=((((x+h2).^2-8*(x+h2)+9)-(x.^2-8*x+9))/h2);
F3=((((x+h3).^2-8*(x+h3)+9)-(x.^2-8*x+9))/h3);
F4=((((x+h4).^2-8*(x+h4)+9)-(x.^2-8*x+9))/h4);
F5=((((x+h5).^2-8*(x+h5)+9)-(x.^2-8*x+9))/h5);
F6=((((x+h6).^2-8*(x+h6)+9)-(x.^2-8*x+9))/h6);
F7=((((x+h7).^2-8*(x+h7)+9)-(x.^2-8*x+9))/h7);
%these are the derivitives using the definition of the derivitive
F10=2*x-8;
%this is the derivitive using the fundamental therom of calculus


figure;
hold on;

ttla=('derivitives');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('x');
ylabel('f(x)');
axis([-1  2  -10 20]);
%sets up graph

plot(x,F0,'black');
text(0,11,'f(x)=x^2-8x+9','color','black');
plot(x,F1,'b');
plot(x,F2,'b');
plot(x,F3,'b');
plot(x,F4,'b');
plot(x,F5,'b');
plot(x,F6,'b');
plot(x,F7,'b');
text(-.5,-1,'first try at derivitive h=5 (very bad)','color','blue');
text(0,-9,'best try at derivitive h=.001(very good)','color','blue');
%plots the derivitives in different steps

plot(x,F10,'r.','markersize',1);
text(1,-7,'actual derivitive (best)','color','red');
%confirms that the derivitive lines are getting better

hold off