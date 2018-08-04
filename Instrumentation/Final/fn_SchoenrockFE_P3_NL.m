%Function m-file needed to solve nonlinear Curve fitting class example 1
%version 2007-10-08 D.W. Donovan
function f = fun(a)

load('nonlinex1.mat','-ascii');
x=nonlinex1(:,1);
fx=nonlinex1(:,2);

a0=a(1);
a1=a(2);
a2=a(3);

g=a0*exp(-a1*(x-a2).^2);
f=(g-fx)'*(g-fx);