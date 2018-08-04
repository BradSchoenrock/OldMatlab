clear all;

% 1.28 cm - width of cylinder

ai = analoginput('nidaq',1);
chan = addchannel(ai,0);
duration=100;

set(ai,'SampleRate',1000);
ActualRate = get(ai,'SampleRate');
set(ai,'SamplesPerTrigger',duration*ActualRate);
preview = duration*ActualRate/100;

figure
subplot(211)
set(gcf,'doublebuffer','on');
p = plot(zeros(preview,1));
grid on
title('Preview Data')
xlabel('Samples')
ylabel('Signal Level (volts)')
axis([0 500 -10 10])

start(ai)
while ai.SamplesAcquired < preview
end

while ai.SamplesAcquired < duration*ActualRate
    pdata = peekdata(ai,preview);
    set(p,'ydata',pdata)
    drawnow
end

[data,time] = getdata(ai);
tdata = [time data];
x = tdata(:,1);
y = tdata(:,2);
subplot(212), plot(x,y);
grid on
axis([0 100 -10 10])
title('All Acquired Data')
xlabel('Time')
ylabel('Signal Level (volts)')

delete(ai)