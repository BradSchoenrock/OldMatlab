
function f = fun(a)

load('trimmed_Al_Point.mat','-ascii');
x=trimmed_Al_Point(:,1);
fx=trimmed_Al_Point(:,7)*100;

a0=a(1);
a1=a(2);

g=a0+(fx(1)-a0)*exp(-a1*x);
f=(g-fx)'*(g-fx);