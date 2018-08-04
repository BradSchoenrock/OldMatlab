
function f = fun(a)

load('trimmed_Steel_Sand.mat','-ascii');
x=trimmed_Steel_Sand(:,1);
fx=trimmed_Steel_Sand(:,5)*100;

a0=a(1);
a1=a(2);

g=a0+(fx(1)-a0)*exp(-a1*x);
f=(g-fx)'*(g-fx);