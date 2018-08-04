%Function m-file needed to solve nonlinear Curve fitting nonlinear problem
%2
function f = fun(a)

load('nlonegauss.mat','-ascii');
x=nlonegauss(:,1);
fx=nlonegauss(:,2);

a1=a(1);
a2=a(2);
a3=a(3);


g=a1*(exp(-a2*(x-a3).^2));
f=(g-fx)'*(g-fx);