
%Brad Schoenrock
%2-01-2009

clear all;

vs=[2.475;3.004;3.59;3.98;4.46;5.01;5.55;6.10;6.47;7.05;7.52;8.09;9.03;
    9.52;9.98;10.57;11.00;11.59;12.10;12.47;13.01;13.57;14.07;14.55;14.99;
    15.52;15.91;16.55;17.05;17.55;17.94;18.53;19.06;19.42;19.82];
    
x=[2.044;2.474;2.960;3.27;3.68;4.12;4.58;5.02;5.33;5.82;6.18;6.67;7.44;
7.85;8.22;8.69;9.07;9.56;9.98;10.29;10.74;11.19;11.61;12.04;12.37;12.80;
13.12;13.65;14.06;14.48;14.80;15.28;15.72;16.02;16.35];

iii= [.43;.52;.63;.69;.78;.88;.97;1.07;1.13;1.23;1.32;1.42;1.59;1.67;1.75;
1.85;1.93;2.03;2.12;2.19;2.28;2.38;2.47;2.56;2.64;2.73;2.79;2.91;3.00;
3.09;3.15;3.26;3.35;3.42;3.49];

y=iii/1000;

n(:,2)=x;
n(:,1)=ones(size(x));
c=n\y;

slope=c(2)
resistance=1/slope
yintercept=c(1)

sp='The Slope Is ';
s=num2str(slope);
sit='  1/\Omega';
st=[sp,s,sit];

si='The Y Intercept Is ';
i=num2str(yintercept);
kit=' A';
sti=[si,i,kit];

xp=[min(x):(max(x)-min(x))/100 :max(x)]';
yp=c(2)*xp+c(1);

figure;
hold on
plot(x,y,'r*');
plot(xp,yp,'b-');
plot(max(x),max(y),'w.');
plot(max(x),max(y),'w.');
plot(max(x),max(y),'w.');
legend('Data','Fitted Line',st,sti,'the resistance is 4682.4\Omega',4)
legend('boxoff')
t1='Current vs. Voltage';
t3='Brad Schoenrock';
t0='\newline';
t=[t1,t0,t3,t0,date];
title(t)
ylabel('Current i in Amps (A)')
xlabel('Voltage V in Volts (V)')

%{
Brad Schoenrock
slope = 2.1357e-004
resistance =  4.6824e+003
y-intercept = -6.2320e-006
%}