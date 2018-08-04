
%Brad Schoenrock
%1-14-2009

clear all;

t=(0:.0001:.1)';

P=.02*sin(100*t).*cos(100*t);

figure;
hold on;

ttla=('Power Vs. Time');
tt2='Brad Schoenrock';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('Time t in seconds (s)');
ylabel('Power P in Watts (W)');
axis([0 .1  -.02 .02]);

plot(t,P,'.','color','k');
hold off

for n=1:1:size(t)-1;
    if P(n+1)<=0&&P(n)>=0;
        z=t(n+1)
    end
    if P(n+1)>=0&&P(n)<=0;
        a=t(n+1)
    end
end
%{ 
will print out the crossing points 
a denotes up crossing z denotes down crossing
for this example the crossings are
a = 1.0000e-004
z = 0.0158
a = 0.0315
z = 0.0472
a = 0.0629
z = 0.0786
a = 0.0943
%}
