%Brad Schoenrock
%1-14-2009

clear all;

R=(0:.1:10)';
S=(10:.1:15)';
T=(15:.1:25)';

P0=60*R;
P1=-10*S.^2+160*S;
P2=-15*T+375;

figure;
hold on;

ttla=('Power Vs. Time');
tt2='Brad Schoenrock';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('Time in sec (s)');
ylabel('Power in (W)');
axis([0 25  0 650]);

plot(R,P0,'.','color','k');
plot(S,P1,'.','color','k');
plot(T,P2,'.','color','k');
hold off
