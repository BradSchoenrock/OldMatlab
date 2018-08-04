% fourier series for a sawtooth function
% Brad Schoenrock 10/2010

clear all;

count=1
large=1000;
x=[-2*pi:0.01:2*pi];
b=ones(large);
yn=0;

for n=1:large
    b(n)=(2*(-1)^(n+1))/n;
end

for i=1:count
    yn=yn+b(i)*sin(i*x);
end

hold on
figure
plot(x,x,'k-',x,yn,'b-')
title(strcat('fourier series of f(x)=x for n =',num2str(count)))
axis([-2*pi 2*pi -2*pi 2*pi])
xlabel('x')
ylabel('y')
hold off
