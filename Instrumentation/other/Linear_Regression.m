% loads data from IV curve for a resistor and performs a linear
% regresion on the data
% Brad Schoenrock

clear all;

load('cdata.mat','-ASCII')

y=cdata(:,1);
x=cdata(:,2);

n(:,2)=x;
n(:,1)=ones(size(x));
c=n\y;

slope=c(2)
yintercept=c(1)
resval=1/slope;

sp='The Slope Is ';
s=num2str(slope);
st=[sp,s];

si='The Y Intercept Is ';
i=num2str(yintercept);
sti=[si,i];

sr='The Risistor Value Is ';
r=num2str(resval);
str=[sr,r];

xp=[min(x):(max(x)-min(x))/100 :max(x)]';
yp=c(2)*xp+c(1);

figure;
hold on
plot(x,y,'r*');
plot(xp,yp,'b-');
plot(max(x),max(y),'w.');
plot(max(x),max(y),'w.');
plot(max(x),max(y),'w.');
legend('Data','Fitted Line',st,sti,str,2)
legend('boxoff')
t1='I V Curve for a Resistor';
t3='Brad Schoenrock';
t0='\newline';
t=[t1,t0,t3,t0,date];
title(t)
xlabel('voltage, V, (volts)')
ylabel('current, i, (amps)')

%{
Brad Schoenrock


%}