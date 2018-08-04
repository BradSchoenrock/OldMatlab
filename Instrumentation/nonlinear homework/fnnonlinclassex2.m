%Function m-file needed to solve nonlinear Curve fitting class example 2
%version 2007-10-08 D.W. Donovan
function f = fun(a)

load('nonlinex2.mat','-ascii');
x=nonlinex2(:,1);
fx=nonlinex2(:,2);

a0=a(1);
a1=a(2);

g=a0*(exp(a1*x)-1);
f=(g-fx)'*(g-fx);