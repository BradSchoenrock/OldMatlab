% data taking for major diode project
% Brad Schoenrock

clear all;

ai=analoginput('nidaq',1);
chan = addchannel(ai,0:2);
set(ai,'SampleRate',1);
ActualRate=get(ai,'SampleRate');
set(ai,'SamplesPerTrigger',ActualRate)
ActualRange=setverify(ai.Channel,'InputRange',[-2.5 2.5]);
ao=analogoutput('nidaq',1);
chan=addchannel(ao,0);
set(ao,'TriggerType','Manual');

savefile1='tenloop.mat';
savefile2='tenloopb.mat';
loop=10;

R1=98.271;

R2=1000;

figure
hold on
t1='Data for Diode Project';
tt2='Brad Schoenrock - ';
tt=[t1,'\newline',tt2,date];

title(tt)
xlabel('Voltage across, V, (Volts)')
ylabel('Current through, I (amps)')
axis([-.5 2 -1 1]);
axis ('auto y')

j=1;
for ii=1:loop
    ii
    for i=-.5:.01:2.0
        putdata(ao,i);
        start(ao)
        trigger(ao)
        while strcmp(ao.Running,'On')
        end

data(j,:)=getsample(ai);
id(j)=data(j,1)/R1;
vd(j)=data(j,2)-data(j,1);
vr(j)=data(j,3)-data(j,2);
cc=(-1)^ii;
if cc==-1
    plot(vd(j),id(j),'r*')
    plot(vr(j),id(j),'bo')
else
    plot(vd(j),id(j),'g^')
    plot(vr(j),id(j),'ys')
end

drawnow

j=j+1;
    end
end


putdata(ao,0);
start(ao)
trigger(ao)
while strcmp(ao.Running,'On')
end

delete(ao)
clear ao
delete(ai)

tenloopb(:,1)=id';
tenloopb(:,2)=vd';
tenloopb(:,3)=vr';


save(savefile1,'data','-ASCII','-TABS');
save(savefile2,'tenloopb','-ASCII','-TABS');

