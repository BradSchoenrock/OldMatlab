%Function m-file needed to solve Midterm problem 5

function f = fun(a)

load('midtermP5.mat','-ascii');
x=midtermP5(:,1);
fx=midtermP5(:,2);

a1=a(1);
a2=a(2);
a3=a(3);
a4=a(4);
a5=a(5);
a6=a(6);

g=a1*exp(-((x-a3).^2)/a2.^2)+a4*exp(-((x-a6).^2)/a5.^2);
f=(g-fx)'*(g-fx);