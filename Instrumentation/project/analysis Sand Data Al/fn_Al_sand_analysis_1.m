
function f = fun(a)

load('trimmed_Al_Sand.mat','-ascii');
x=trimmed_Al_Sand(:,1);
fx=trimmed_Al_Sand(:,3)*100;

a0=a(1);
a1=a(2);

g=a0+(fx(1)-a0)*exp(-a1*x);
f=(g-fx)'*(g-fx);