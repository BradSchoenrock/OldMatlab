% gathering data using the A/D boards
% Brad Schoenrock

clear all;

ai=analoginput('nidaq',1);
chan=addchannel(ai,0:7);
set(ai,'SampleRate',1);
ActualRate=get(ai,'SampleRate');
set(ai,'SamplesPerTrigger',ActualRate);
ActualRange=setverify(ai.Channel,'InputRange',[-10 10]);

data=getsample(ai);

v0=data(1)
v1=data(2)
v2=data(3)
v3=data(4)
v4=data(5)
v5=data(6)
v6=data(7)

v2200=v1-v0
v10000=v2-v3
v6800=v4-v0
v3300=v3-v5
v4700=v5-v6

i2200=v2200/2200
i6800=v6800/6800
i4700=v4700/4700
delete(ai)

%{
v0= 0.0024
v1= -1.1548
v2= 3.7312
v3= -1.3324
v4= 8.7594
v5= 1.2020
v6= 4.8617

v2200= -1.1572
v10000= 5.0636
v6800= 8.7570
v3300= -2.5344
v4700= -3.6597

i2200= -0.5223
i6800= 1.2986
i4700= -0.7782

%}