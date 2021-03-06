clear all;

% here starts data loading
name=load('trimmed_Al_Sand.mat','-ASCII');

t = name(:,1);
T0 = name(:,2)*100;
T1 = name(:,3)*100;
T2 = name(:,4)*100;
T3 = name(:,5)*100;
T4 = name(:,6)*100;
T5 = name(:,7)*100;
T6 = name(:,8)*100;
T7 = name(:,9)*100;

        
%{
 here starts plots

figure
hold on
plot(t,T0,'r*');
axis([0 1800 250 400])
title('Sensor 0')
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')
hold off

figure
hold on
plot(t,T1,'r*');
axis([0 1800 250 400])
title('Sensor 1')
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')
hold off

figure
hold on
plot(t,T2,'r*');
axis([0 1800 250 400])
title('Sensor 2')
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')
hold off

figure
hold on
plot(t,T3,'r*');
axis([0 1800 250 400])
title('Sensor 3')
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')
hold off

figure
hold on
plot(t,T4,'r*');
axis([0 1800 250 400])
title('Sensor 4')
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')
hold off

figure
hold on
plot(t,T5,'r*');
axis([0 1800 250 400])
title('Sensor 5')
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')
hold off

figure
hold on
plot(t,T6,'r*');
axis([0 1800 250 400])
title('Sensor 6')
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')
hold off

figure
hold on
plot(t,T7,'r*');
axis([0 1800 250 400])
title('Sensor 7')
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')
hold off
%}

% here starts analysis

%{
my naming system is as follows
a3 is array of a's for sensor 3
a31 refers to sensor 3 k paramater
a30 refers to sensor 3 environmental temperature
%}

aguess=[410 0.002]

a0=fminsearch(@fn_Al_sand_analysis_0,aguess)
a1=fminsearch(@fn_Al_sand_analysis_1,aguess)
a2=fminsearch(@fn_Al_sand_analysis_2,aguess)
a3=fminsearch(@fn_Al_sand_analysis_3,aguess)
a4=fminsearch(@fn_Al_sand_analysis_4,aguess)
a5=fminsearch(@fn_Al_sand_analysis_5,aguess)
a6=fminsearch(@fn_Al_sand_analysis_6,aguess)
a7=fminsearch(@fn_Al_sand_analysis_7,aguess)

% these represent the environmental temperature
a00=a0(1);
a10=a1(1);
a20=a2(1);
a30=a3(1);
a40=a4(1);
a50=a5(1);
a60=a6(1);
a70=a7(1);

% these represent the constant k in the exponetial
a01=a0(2);
a11=a1(2);
a21=a2(2);
a31=a3(2);
a41=a4(2);
a51=a5(2);
a61=a6(2);
a71=a7(2);

ffx0=a00+(T0(1)-a00)*exp(-a01*t);
ffx1=a10+(T1(1)-a10)*exp(-a11*t);
ffx2=a20+(T2(1)-a20)*exp(-a21*t);
ffx3=a30+(T3(1)-a30)*exp(-a31*t);
ffx4=a40+(T4(1)-a40)*exp(-a41*t);
ffx5=a50+(T5(1)-a50)*exp(-a51*t);
ffx6=a60+(T6(1)-a60)*exp(-a61*t);
ffx7=a70+(T7(1)-a70)*exp(-a71*t);

ss0=(T0-ffx0)'*(T0-ffx0);
ss1=(T1-ffx1)'*(T1-ffx1);
ss2=(T2-ffx2)'*(T2-ffx2);
ss3=(T3-ffx3)'*(T3-ffx3);
ss4=(T4-ffx4)'*(T4-ffx4);
ss5=(T5-ffx5)'*(T5-ffx5);
ss6=(T6-ffx6)'*(T6-ffx6);
ss7=(T7-ffx7)'*(T7-ffx7);

ssdp0=(ss0./size(t));
ssdp1=(ss1./size(t));
ssdp2=(ss2./size(t));
ssdp3=(ss3./size(t));
ssdp4=(ss4./size(t));
ssdp5=(ss5./size(t));
ssdp6=(ss6./size(t));
ssdp7=(ss7./size(t));

tc=[min(t):(max(t)-min(t))/100:max(t)]';

ftc0=a00+(T0(1)-a00)*exp(-a01*tc);
ftc1=a10+(T1(1)-a10)*exp(-a11*tc);
ftc2=a20+(T2(1)-a20)*exp(-a21*tc);
ftc3=a30+(T3(1)-a30)*exp(-a31*tc);
ftc4=a40+(T4(1)-a40)*exp(-a41*tc);
ftc5=a50+(T5(1)-a50)*exp(-a51*tc);
ftc6=a60+(T6(1)-a60)*exp(-a61*tc);
ftc7=a70+(T7(1)-a70)*exp(-a71*tc);


laguess=['aguess = ',num2str(aguess)];

la00=['a00 = ',num2str(a00)];
la10=['a10 = ',num2str(a10)];
la20=['a20 = ',num2str(a20)];
la30=['a30 = ',num2str(a30)];
la40=['a40 = ',num2str(a40)];
la50=['a50 = ',num2str(a50)];
la60=['a60 = ',num2str(a60)];
la70=['a70 = ',num2str(a70)];

la01=['a01 = ',num2str(a01)];
la11=['a11 = ',num2str(a11)];
la21=['a21 = ',num2str(a21)];
la31=['a31 = ',num2str(a31)];
la41=['a41 = ',num2str(a41)];
la51=['a51 = ',num2str(a51)];
la61=['a61 = ',num2str(a61)];
la71=['a71 = ',num2str(a71)];

lss0=['sm Sq = ',num2str(ss0)];
lss1=['sm Sq = ',num2str(ss1)];
lss2=['sm Sq = ',num2str(ss2)];
lss3=['sm Sq = ',num2str(ss3)];
lss4=['sm Sq = ',num2str(ss4)];
lss5=['sm Sq = ',num2str(ss5)];
lss6=['sm Sq = ',num2str(ss6)];
lss7=['sm Sq = ',num2str(ss7)];

lssdp0=['sm Sq DP = ',num2str(ssdp0(1))];
lssdp1=['sm Sq DP = ',num2str(ssdp1(1))];
lssdp2=['sm Sq DP = ',num2str(ssdp2(1))];
lssdp3=['sm Sq DP = ',num2str(ssdp3(1))];
lssdp4=['sm Sq DP = ',num2str(ssdp4(1))];
lssdp5=['sm Sq DP = ',num2str(ssdp5(1))];
lssdp6=['sm Sq DP = ',num2str(ssdp6(1))];
lssdp7=['sm Sq DP = ',num2str(ssdp7(1))];

t1='Fitted Sand Data Al - ';
t2='Data Fitted to Newtons Law of Cooling\newline';
name='B.D.Schoenrock - ';


% ploting final results
figure
hold on;
senso='sensor 0 \newline';
tyu=[t1,senso,t2,name,date];
title(tyu)
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')

plot(t,T0,'r*')
plot(tc,ftc0,'b')
plot(min(tc),max(ftc0),'w')
plot(min(tc),max(ftc0),'w')
plot(min(tc),max(ftc0),'w')
plot(min(tc),max(ftc0),'w')
plot(min(tc),max(ftc0),'w')

legend('raw data','fitted curve',laguess,la00,la01,lss0,lssdp0,2);
legend('boxoff')

hold off;
%}

figure
hold on;
senso='sensor 1 \newline';
tyu=[t1,senso,t2,name,date];
title(tyu)
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')

plot(t,T1,'r*')
plot(tc,ftc1,'b')
plot(min(tc),max(ftc1),'w')
plot(min(tc),max(ftc1),'w')
plot(min(tc),max(ftc1),'w')
plot(min(tc),max(ftc1),'w')
plot(min(tc),max(ftc1),'w')

legend('raw data','fitted curve',laguess,la10,la11,lss1,lssdp1,2);
legend('boxoff')

hold off;
%}

figure
hold on;
senso='sensor 2 \newline';
tyu=[t1,senso,t2,name,date];
title(tyu)
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')

plot(t,T2,'r*')
plot(tc,ftc2,'b')
plot(min(tc),max(ftc2),'w')
plot(min(tc),max(ftc2),'w')
plot(min(tc),max(ftc2),'w')
plot(min(tc),max(ftc2),'w')
plot(min(tc),max(ftc2),'w')

legend('raw data','fitted curve',laguess,la20,la21,lss2,lssdp2,2);
legend('boxoff')

hold off;
%}

figure
hold on;
senso='sensor 3 \newline';
tyu=[t1,senso,t2,name,date];
title(tyu)
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')

plot(t,T3,'r*')
plot(tc,ftc3,'b')
plot(min(tc),max(ftc3),'w')
plot(min(tc),max(ftc3),'w')
plot(min(tc),max(ftc3),'w')
plot(min(tc),max(ftc3),'w')
plot(min(tc),max(ftc3),'w')

legend('raw data','fitted curve',laguess,la30,la31,lss3,lssdp3,2);
legend('boxoff')

hold off;
%}

figure
hold on;
senso='sensor 4 \newline';
tyu=[t1,senso,t2,name,date];
title(tyu)
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')

plot(t,T4,'r*')
plot(tc,ftc4,'b')
plot(min(tc),max(ftc4),'w')
plot(min(tc),max(ftc4),'w')
plot(min(tc),max(ftc4),'w')
plot(min(tc),max(ftc4),'w')
plot(min(tc),max(ftc4),'w')

legend('raw data','fitted curve',laguess,la40,la41,lss4,lssdp4,2);
legend('boxoff')

hold off;
%}

figure
hold on;
senso='sensor 5 \newline';
tyu=[t1,senso,t2,name,date];
title(tyu)
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')

plot(t,T5,'r*')
plot(tc,ftc5,'b')
plot(min(tc),max(ftc5),'w')
plot(min(tc),max(ftc5),'w')
plot(min(tc),max(ftc5),'w')
plot(min(tc),max(ftc5),'w')
plot(min(tc),max(ftc5),'w')

legend('raw data','fitted curve',laguess,la50,la51,lss5,lssdp5,2);
legend('boxoff')

hold off;
%}

figure
hold on;
senso='sensor 6 \newline';
tyu=[t1,senso,t2,name,date];
title(tyu)
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')

plot(t,T6,'r*')
plot(tc,ftc6,'b')
plot(min(tc),max(ftc6),'w')
plot(min(tc),max(ftc6),'w')
plot(min(tc),max(ftc6),'w')
plot(min(tc),max(ftc6),'w')
plot(min(tc),max(ftc6),'w')

legend('raw data','fitted curve',laguess,la60,la61,lss6,lssdp6,2);
legend('boxoff')

hold off;
%}

figure
hold on;
senso='sensor 7 \newline';
tyu=[t1,senso,t2,name,date];
title(tyu)
xlabel('Time, t, (seconds)')
ylabel('Temperature, T, (Kelvin)')

plot(t,T7,'r*')
plot(tc,ftc7,'b')
plot(min(tc),max(ftc7),'w')
plot(min(tc),max(ftc7),'w')
plot(min(tc),max(ftc7),'w')
plot(min(tc),max(ftc7),'w')
plot(min(tc),max(ftc7),'w')

legend('raw data','fitted curve',laguess,la70,la71,lss7,lssdp7,2);
legend('boxoff')

hold off;
%}

% error analysis

To=[T0(1) T1(1) T2(1) T3(1) T4(1) T5(1) T6(1) T7(1)];
dT=[ssdp0(1) ssdp1(1) ssdp2(1) ssdp3(1) ssdp4(1) ssdp5(1) ssdp6(1) ssdp7(1)];
Te=[a00 a10 a20 a30 a40 a50 a60 a70];
k=[a01 a11 a21 a31 a41 a51 a61 a71];
Tf=[T0(1800) T1(1800) T2(1800) T3(1800) T4(1800) T5(1800) T6(1800) T7(1800)];
Tave=(To+Tf)./2;
dt=1800;

dkk=-1*dT./(Tave).*(Te.*exp(k.*dt)+To-Te)./(k.*dt.*(To-Te))

dTT=dT./(Tave).*(Te.*exp(k.*dt)+To-Te)./(Te.*(exp(k.*dt)+1))
%{
output for this program
aguess =  410.0000    0.0020
a0 =  406.5231    0.0013
a1 = 408.9137    0.0013
a2 = 405.9334    0.0013
a3 = 406.4332    0.0014
a4 = 407.6086    0.0013
a5 = 405.9057    0.0013
a6 = 404.1844    0.0013
a7 = 407.1649    0.0014

dkk = 0.3282    0.3410    0.3979    0.4347    0.2352    0.2586    0.2262    0.5350
dTT = 0.0175    0.0184    0.0208    0.0220    0.0129    0.0144    0.0125    0.0260
%}
