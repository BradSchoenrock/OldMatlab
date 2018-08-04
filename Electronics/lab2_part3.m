%Brad Schoenrock
%1/28/2009
%solves systems of linear equasions

clear all;

ii=[1 -1 -1;
    280 180 0;
    0 180 -970];

V=[0 10 0]';

i=ii\V;

ia=i(1)
ib=i(2)
ic=i(3)

v10=280*ia+180*ib
v20=180*ia+180*ib
v30=750*ic+180*ia
v40=420*ic+180*ia
v50=270*ic+180*ia
v60=180*ia
v21=-100*ia
v32=-220*ic
v62=-180*ib
v43=-330*ic
v54=-150*ic
v65=-270*ic

%{
theoretical currents and voltages
ia = 0.0232
ib = 0.0195
ic = 0.0036
v10 = 10
v20 = 7.6843
v30 = 6.8868
v40 = 5.6907
v50 = 5.1470
v60 = 4.1683
v21 = -2.3157
v32 = -0.7974
v62 = -3.5159
v43 = -1.1961
v54 = -0.5437
v65 = -0.9787
%}

% these contain experimental values
a=(ia-23.10/1000)/ia*100
b=(ib-19.48/1000)/ib*100
c=(ic-3.64/1000)/ic*100
va=(v10-9.91)/v10*100
vb=(v20-7.62)/v20*100
vc=(v30-6.83)/v30*100
vd=(v40-5.65)/v40*100
ve=(v50-5.12)/v50*100
vf=(v60-4.13)/v60*100
vg=(v21+2.298)/v21*100
vh=(v32+0.793)/v32*100
vi=(v62+3.45)/v62*100
vj=(v43+1.174)/v43*100
vk=(v54+0.528)/v54*100
vl=(v65+0.965)/v65*100

%{
percent differences corespond to previous readouts respectively
a = 0.2482
b = 0.2704
c = -0.4236
va = 0.9000
vb = 0.8362
vc = 0.8252
vd = 0.7151
ve = 0.5246
vf = 0.9199
vg = 0.7664
vh = 0.5546
vi = 1.8746
vj = 1.8504
vk = 2.8871
vl = 1.3953
%}