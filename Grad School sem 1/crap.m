clear all
x=[5;10;15;20;25;30;35;40;45;50;55;60;65;70;75;80;85;90;95;100;110;115;155;3.7e3;1.22e4;1800;9.1e4;517;3.8e4;398;2.965e6;407;6.6e5;896;];
y=[3;11;5;3;5;1;0;3;6;1;1;0;4;2;1;1;0;0;0;0;1;1;1;1;1;1;1;1;1;1;1;1;1;1;];

figure
bar(x,y)
title('number of fits eliminated by cutoff')
xlabel('percent cutoff')
ylabel('number of rates')
axis([0 150 0 12])