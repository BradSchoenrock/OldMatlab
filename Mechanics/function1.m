%this program 
%version 2008-01-17 B.S.

clear all;
% clears everything for good measure

a=-2
b=2
x=(a:.1:b);
%this defines our range of data points and steps in data points

f1=@(x)2*x(1).^2+3*x(1)+2;
f2=@(x)x(1).^3-x(1)+1;
f3=@(x)x(1).^4-3*x(1).^2+x(1);

f1a=2*x.^2+3*x+2;
f2a=x.^3-x+1;
f3a=x.^4-3*x.^2+x;

%defines out three functions

figure;
hold on;

ttla=('function 1');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('x');
ylabel('f(x)');
axis([a-1 b+1  -10 20]);
%creates a figure and tells it how big to be, adds labels ect...

plot(x,f1a,'b+');
text(1.8,18,'f1(x)=2x^2+3x+2','color','blue');
plot(x,f2a,'r*');
text(1.8,9,'f2(x)=x^3-x+1','color','red');
plot(x,f3a,'g.');
text(1.8,0,'f3(x)=x^4-3x^2+x','color','green');
%text(0,0,
%plots and labels our actual functions

[x,fvalx] = fminsearch(f1,0)
[y,fvaly] = fminsearch(f2,-1.25)
[z,fvalz] = fminsearch(f3,0)
%finds global mins

if x<a
    x=a
    fvalx=f1(a)
end;

if x>b
    x=b
    fvalx=f1(b)
end;

if y<a
    y=a
    fvaly=f2(a)
end;

if y>b
    y=b
    fvaly=f2(b)
end;

if z<a
    z=a
    fvalz=f3(a)
end;

if z>b
    z=b
    fvalz=f3(b)
end;
%all of these loops make sure the global mins are in the range of intrest

%legend(num2str(x),num2str(y),num2str(z),2);
text(a-.5,18,num2str(x),'color','blue')
text(a-.5,16,num2str(y),'color','red')
text(a-.5,14,num2str(z),'color','green')
text(a+.5,18,num2str(fvalx),'color','blue')
text(a+.5,16,num2str(fvaly),'color','red')
text(a+.5,14,num2str(fvalz),'color','green')
text(a-.5,12,'  x               y    ','color','black');
%lets the user know the value of these minimums

hold off