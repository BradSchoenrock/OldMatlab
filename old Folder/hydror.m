%exapmle program to learn matlab
%Brad Schoenrock
%1-14-2009

clear all;

V1=100;
V2=50;
R1=5;
R2=10;
R3=25;
R4=50;
R5=75;
R=(1:1:80)';


P0=((V2./(R+R1)).^2).*R;
P1=((V1./(R+R1)).^2).*R;
P2=((V1./(R+R2)).^2).*R;
P3=((V1./(R+R3)).^2).*R;
P4=((V1./(R+R4)).^2).*R;
P5=((V1./(R+R5)).^2).*R;

figure;
hold on;

ttla=('Power Vs. Resistance');
tt2='Brad Schoenrock';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('Resistance in ohms (\Omega)');
ylabel('Power in Watts (W)');
axis([0 80  0 600]);

plot(R,P0,'color','w')
plot(R,P0,'diamond','color','k');
text(7,150,'Pa2','color','k');
plot(R,P1,'color','k');
text(10,450,'Pa1','color','k');
plot(R,P2,'.','color','k');
text(10,270,'Pb1','color','k');
plot(R,P3,'-.','color','k');
text(30,115,'Pc1','color','k');
plot(R,P4,'--','color','k');
text(10,40,'Pd1','color','k');
plot(R,P5,'square','color','k');
text(33,15,'Pe1','color','k');
legend('load resistors','5 \Omega','5 \Omega','10 \Omega','25 \Omega','50 \Omega','75 \Omega',1);
hold off
