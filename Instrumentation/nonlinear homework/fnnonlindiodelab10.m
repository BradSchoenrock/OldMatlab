
function f = fun(a)

load('tenloopb.mat','-ascii');
x=tenloopb(:,2);
fx=tenloopb(:,1);

a0=a(1);
a1=a(2);

g=a0.*(exp(x./a1)-1);
f=(g-fx)'*(g-fx);