% automatic iv curve for a diode
% Brad Schoenrock

clear all;

ai=analoginput('nidaq',1);
chan = addchannel(ai,0:1);
set(ai,'SampleRate',1);
ActualRate=get(ai,'SampleRate');
set(ai,'SamplesPerTrigger',ActualRate)
ActualRange=setverify(ai.Channel,'InputRange',[-10 10]);
ao=analogoutput('nidaq',1);
chan=addchannel(ao,0);
set(ao,'TriggerType','Manual');

savefile1='data.mat';
savefile2='fdata.mat';

R=991.28;

figure
hold on
t1='I-V Characteristics for a Diode';
tt2='Brad Schoenrock - ';
tt=[t1,'\newline',tt2,date];

title(tt)
xlabel('Voltage across, V, (Volts)')
ylabel('Current through, I (amps)')
axis([-10 10 -1 1]);
axis ('auto y')

j=1;
for ii=-10:0.05:10
    putdata(ao,ii);
    start(ao)
    trigger(ao)
    while strcmp(ao.Running,'On')
    end

data(j,:)=getsample(ai);
id(j)=data(j,1)/R;
vd(j)=data(j,2)-data(j,1);
plot(vd(j),id(j),'bo')
drawnow

j=j+1;
end

putdata(ao,0);
start(ao)
trigger(ao)
while strcmp(ao.Running,'On')
end

delete(ao)
clear ao
delete(ai)

fdata(:,1)=id';
fdata(:,2)=vd';

save(savefile1,'data','-ASCII','-TABS');
save(savefile2,'fdata','-ASCII','-TABS');

