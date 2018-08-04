
function f = fun(a)

load('trimmed_Steel_Point.mat','-ascii');
x=trimmed_Steel_Point(:,1);
fx=trimmed_Steel_Point(:,4)*100;

a0=a(1);
a1=a(2);

g=a0+(fx(1)-a0)*exp(-a1*x);
f=(g-fx)'*(g-fx);