%finds a best fit line for stoping potential vs wavelength
%version 2008 16 march
%Brad Schoenrock

clear all;

x= [1/365;1/365;1/365;1/365;1/365;1/400;1/400;1/400;1/400;1/400;1/435;
    1/435;1/435;1/435;1/435;1/560;1/560;1/560;1/560;1/560;1/600;1/600;
    1/600;1/600;1/600;1/365;1/400;1/435;1/560;1/600];

y= [1.804;1.785;1.771;1.737;1.578;1.539;1.529;1.513;1.480;1.341;1.358;
    1.351;1.342;1.326;1.235;.833;.830;.820;.804;.729;.806;.804;.781;
    .733;.619;1.879;1.537;1.381;.821;.674];

n(:,2)=x;
n(:,1)=ones(size(x));
c=n\y;

slope=c(2)
yintercept=c(1)

sp='The Slope is hc = ';
s=num2str(slope);
st=[sp,s,' eV*nm'];

si='The Y Intercept is W = ';
i=num2str(yintercept);
sti=[si,i,' eV'];

xp=[min(x):(max(x)-min(x))/100 :max(x)]';
yp=c(2)*xp+c(1);

figure;
hold on
plot(x,y,'r*');
plot(xp,yp,'b-');
plot(max(x),max(y),'w.')
plot(max(x),max(y),'w.')
plot(max(x),max(y),'w.')
plot(max(x),max(y),'w.')
legend('Actual data','Fitted line',st,sti,'the cutoff wavelength is 1085 nm',2)
legend('boxoff')
t1='Photoelectric effect, stoping potential vs. wavelength';
t3='Brad Schoenrock'
t0='\newline';
t=[t1,t0,t3,date];
title(t)
xlabel('1/wavelength with units of 1/nm')
ylabel('stoping potential in eV')