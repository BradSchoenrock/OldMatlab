%finds a best fit line for a set of data
%Brad Schoenrock
%1-20-2009

clear all;

y= [2.48;2.98;3.50;4.11;4.55;5.05;5.50;6.04;6.49;7.05;7.56;8.12;8.58;
    9.11;9.53;10.04;];

x= [2.46;2.96;3.49;4.10;4.53;5.03;5.48;6.01;6.46;7.02;7.52;8.07;8.52;
    9.04;9.46;9.96;];

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


%}