clear all;

% here starts data loading
name=load('SandHeatSteel.mat','-ASCII');

hh=0; %number of data points kept
array=name(:,1);
ksize=size(array);
for kk=1:ksize % kk is a counter through all data points taken
    if(mod(kk,100)==0)
        hh=hh+1;
        t(hh) = name(kk,1);
        T0(hh) = name(kk,2);
        T1(hh) = name(kk,3);
        T2(hh) = name(kk,4);
        T3(hh) = name(kk,5);
        T4(hh) = name(kk,6);
        T5(hh) = name(kk,7);
        T6(hh) = name(kk,8);
        T7(hh) = name(kk,9);
    end
end
tdata=[t' T0' T1' T2' T3' T4' T5' T6' T7'];

save('trimmed_Steel_Sand.mat','tdata','-ASCII','-TABS');