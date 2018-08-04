%finds a best fit line for a set of data
%Brad Schoenrock
%1-20-2009

clear all;

y= [-51.11;-41.79;-32.47;-23.15;-13.83;4.81;14.13;23.45;32.77;42.09;
    51.41;60.73;70.05;79.37;88.69;];

x= [-20;-16;-12;-8;-4;4;8;12;16;20;24;28;32;36;40;];

n(:,2)=x;
n(:,1)=ones(size(x));
c=n\y;

slope=c(2)
yintercept=c(1)

sp='The Slope Is ';
s=num2str(slope);
st=[sp,s];

si='The Y Intercept Is ';
i=num2str(yintercept);
sti=[si,i];

xp=[min(x):(max(x)-min(x))/100 :max(x)]';
yp=c(2)*xp+c(1);

figure;
hold on
plot(x,y,'r*');
plot(xp,yp,'b-');
plot(max(x),max(y),'w.');
plot(max(x),max(y),'w.');
legend('Data','Fitted Line',st,sti,2)
legend('boxoff')
t1='Example Demonstrating Best Fit Line';
t3='Brad Schoenrock';
t0='\newline';
t=[t1,t0,t3,t0,date];
title(t)
xlabel('x in unitless numbers')
ylabel('y in unitless numbers')

%{
Brad Schoenrock

slope =2.3300
yintercept =-4.5100
%}