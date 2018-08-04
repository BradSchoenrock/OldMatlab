%IV curve for a diode
%Brad Schoenrock

clear all;

a= [1.71;2.23;2.74;3.17;3.78;4.25;4.77;5.20;5.73;6.20;6.73;7.30;7.70;8.16;
    8.71;9.29;];

x= [.758;.766;.771;.775;.780;.783;.786;.788;.790;.792;.794;.797;.798;.800;
    .801;.802;];

y=a/1000;

figure;
hold on
plot(x,y,'r*');
t1='I V Curve for a Diode';
t3='Brad Schoenrock';
t0='\newline';
t=[t1,t0,t3,t0,date];
title(t)
xlabel('Voltage, V, (Volts)')
ylabel('Current, i, (Amps)')

%{
Brad Schoenrock


%}