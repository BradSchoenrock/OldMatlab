%finds a best fit line for a set of data
%version 2008 19 january
%Brad Schoenrock

clear all;

x= [80;80;80;81;81;81;81;83;88;90;93;96;100;105;108;112;115;117;121;124;
    126;129;131;133;136;137;139;141;143;145;146;148;150;151;153;156;158;
    159;161;162;163;165;166;168;169;171;172;174;175;177;178;181;182;184;
    185;186;187;191;];

y= [0.0000;0.0000;0.0000;0.0000;0.0000;0.0000;0.0000;0.0000;0.0000;0.0005;
0.0016;0.0030;0.0040;0.0042;0.0043;0.0044;0.0045;0.0046;0.0047;0.0047;
0.0048;0.0049;0.0049;0.0050;0.0050;0.0051;0.0051;0.0052;0.0052;0.0052;
0.0053;0.0053;0.0053;0.0054;0.0054;0.0055;0.0055;0.0055;0.0055;0.0056;
0.0056;0.0056;0.0057;0.0057;0.0057;0.0057;0.0057;0.0058;0.0058;0.0058;
0.0058;0.0059;0.0059;0.0059;0.0059;0.0059;0.0060;0.0060;];

figure;
hold on
plot(x,y,'r*');
plot(max(x),max(y),'w.')
plot(max(x),max(y),'w.')
legend('Data',2)
legend('boxoff')
t1='Yttrium trial 3';
t3='Brad Schoenrock '
t0='\newline';
t=[t1,t0,t3,date];
title(t)
xlabel('Temp in K')
ylabel('resistance in Ohms')