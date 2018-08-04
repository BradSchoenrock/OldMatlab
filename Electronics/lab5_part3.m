
%Brad Schoenrock

clear all;

f=[25 50 75 100 250 500 750 1000 2500 5000 7500 10000 25000 50000 75000 100000 250000 500000 750000 1000000];

vi=[1.46 1.04 .760 .584 .416 .448 .432 .432 .432 .432 .432 .432 .400 .400 .400 .400 .312 .312 .312 .312];

vo=[.360 .496 .480 .464 .448 .504 .496 .496 .496 .496 .496 .488 .448 .440 .424 .424 .312 .300 .276 .240];

w=2*pi*f;

x=log10(w);

y=20*log10(vo./vi);


figure;
hold on
plot(x,y,'r*');
t1='dB vs. log \omega';
t3='Brad Schoenrock';
t0='\newline';
t=[t1,t0,t3,t0,date];
title(t)
xlabel('log(omega), log\omega (unitless)')
ylabel('deciBells, dB (unitless)')

