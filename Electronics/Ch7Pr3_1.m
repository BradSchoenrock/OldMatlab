

clear all;

c=.5;

t1=[0:.01:2]';
t2=[2:.01:6]';
t3=[6:.01:10]';
t=[t1;t2;t3];

i1=0*t1;
i2=1/5*t2-2/5;
i3=.8*t3./t3;
i=[i1;i2;i3];

v1=0*t1;
v2=1/c*((t2.^2)/10-2/5*t2)+4/5;
v3=1/c*(.8*t3)-32/5;
v=[v1;v2;v3];

p1=i1.*v1;
p2=i2.*v2;
p3=i3.*v3;
p=[p1;p2;p3];

w1=.5*c*v1.^2;
w2=.5*c*v2.^2;
w3=.5*c*v3.^2;
w=[w1;w2;w3];

figure
plot(t,i,'k');
ttla=('Current vs. Time');
tt2='Brad Schoenrock';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('Time, t (s)');
ylabel('Current, i (Amps)');

figure
plot(t,v,'k');
ttla=('Voltage vs. Time');
tt2='Brad Schoenrock';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('Time, t (s)');
ylabel('Voltage, v (V)');

figure
plot(t,p,'k');
ttla=('Power vs. Time');
tt2='Brad Schoenrock';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('Time, t (s)');
ylabel('Power, p (W)');

figure
plot(t,w,'k');
ttla=('Energy vs. Time');
tt2='Brad Schoenrock';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('Time, t (s)');
ylabel('Energy, w (J)');

