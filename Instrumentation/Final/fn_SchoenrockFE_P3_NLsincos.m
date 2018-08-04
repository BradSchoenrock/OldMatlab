

function f = fun(a)

load('Final3.mat','-ascii');
x=Final3(:,1);
fx=Final3(:,2);

a1=a(1);
a2=a(2);
a3=a(3);
a4=a(4);

g=a1*sin(a2*x)+a3*cos(a4*x);
f=(g-fx)'*(g-fx);