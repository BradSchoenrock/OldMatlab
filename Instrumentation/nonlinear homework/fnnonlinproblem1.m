%Function m-file needed to solve nonlinear Curve fitting nonlinear problem
%1

function f = fun(a)

load('nlexp.mat','-ascii');
x=nlexp(:,1);
fx=nlexp(:,2);

a1=a(1);
a2=a(2);
a3=a(3);

g=a1*(exp(a2*x)-a3);
f=(g-fx)'*(g-fx);