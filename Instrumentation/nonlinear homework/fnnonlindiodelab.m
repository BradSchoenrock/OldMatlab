
function f = fun(a)

load('oneloopb.mat','-ascii');
x=oneloopb(:,2);
fx=oneloopb(:,1);

a0=a(1);
a1=a(2);

g=a0.*(exp(x./a1)-1);
f=(g-fx)'*(g-fx);