%Function m-file needed to solve nonlinear Curve fitting nonlinear problem
%5

function f = fun(a)

load('nltwolor.mat','-ascii');
x=nltwolor(:,1);
fx=nltwolor(:,2);

a1=a(1);
a2=a(2);
a3=a(3);
a4=a(4);
a5=a(5);
a6=a(6);

g=a1./(a2.^2+(x-a3).^2)+a4./(a5.^2+(x-a6).^2);
f=(g-fx)'*(g-fx);