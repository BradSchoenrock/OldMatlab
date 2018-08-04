
%Brad Schoenrock
%2-01-2009

clear all;

y= [7.05;4.5;3.375;6;2.625];

x= [11.75/40;7.5/40;5.625/40;10/40;4.375/40];

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
t1='current vs. voltage';
t3='Brad Schoenrock';
t0='\newline';
t=[t1,t0,t3,t0,date];
title(t)
xlabel('Current i in Amps (A)')
ylabel('Voltage V in Volts (V)')

%{
Brad Schoenrock

slope =2.3300
yintercept =-4.5100
%}