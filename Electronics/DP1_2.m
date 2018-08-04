%Brad Schoenrock
%1-14-2009

clear all;

T=(0:.001:1)';

P=600*(exp(-8*T)-exp(-16*T));
P0=@(x) 600*(exp(-8*x)-exp(-16*x));

z1=-1;
for i= 1:1:size(T)-1;
    if(P(i+1)>=P(i));
       z1=T(i+1);
    end
end
% the max is at z1
z1
P0(z1)

figure;
hold on;

ttla=('Power Vs. Time');
tt2='Brad Schoenrock';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('Time in sec (s)');
ylabel('Power in (W)');
axis([0 1  0 500]);

plot(T,P,'.','color','k');
hold off


%{ 
our power is max at 
z1 =0.0870


ans =149.9988
%}

