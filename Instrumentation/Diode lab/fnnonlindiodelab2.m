
function f = fun(a)

load('twoloopb.mat','-ascii');
x=twoloopb(:,2);
fx=twoloopb(:,1);

a0=a(1);
a1=a(2);

g=a0*(exp(x/a1)-1);
f=(g-fx)'*(g-fx);