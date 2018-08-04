%Brad Schoenrock
%1/28/2009
%solves systems of linear equasions

clear all;

ii=[1 -1 1;
    740 370 0;
    0 370 570];

V=[0 5 10]';

i=ii\V;

ia=i(1)
ib=i(2)
ic=i(3)

v10=740*ia+370*ib
v20=560*ia+370*ib
v30=470*ic+370*ib+560*ia
v40=150*ib+560*ia
v50=-100*ic+560*ia
v60=560*ia
v21=-180*ia
v32=470*ic
v42=-220*ib
v46=150*ib
v56=-100*ic

%{
ia = 0.0011
ib = 0.0113
ic = 0.0102
v10 = 5
v20 = 4.8014
v30 = 9.5974
v40 = 2.3138
v50 = -0.4026
v60 = 0.6178
v21 = -0.1986
v32 = 4.7959
v42 = -2.4876
v46 = 1.6961
v56 = -1.0204
%}

% these contain experimental values
a=(ia-1.11/1000)/ia*100
b=(ib-11.34/1000)/ib*100
c=(ic-10.72/1000)/ic*100
va=(v10-5.03)/v10*100
vb=(v20-4.84)/v20*100
vc=(v30-9.60)/v30*100
vd=(v40-2.290)/v40*100
ve=(v50+0.409)/v50*100
vf=(v60-0.611)/v60*100
vg=(v21+0.2024)/v21*100
vh=(v32-4.85)/v32*100
vi=(v42+2.543)/v42*100
vj=(v46-1.595)/v46*100
vk=(v56+1.074)/v56*100

%{
percent differences corespond to previous readouts respectively
a = -0.6215
b = -0.2899
c = -5.0560
va = -0.6000
vb = -0.8032
vc = -0.0276
vd = 1.0305
ve = -1.5777
vf = 1.0944
vg = -1.9309
vh = -1.1277
vi = -2.2275
vj = 5.9598
vk = -5.2520
%}
