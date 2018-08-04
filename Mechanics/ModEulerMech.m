function [x,output]=EulerMech(func,dx,Range,get)

% This function's job is to calculate the Euler approximation to the
% solution of an ODE which is referenced in the function @#### where ####
% is the name of the derivatives function which follows the format:
%
%global w A
%
%derivs=[D(1), first derivative];
%
%   Author: William Tireman
%   Date: December 3, 2008

% This block initializes loop variables and arrays
x=Range(1):dx:Range(2); % initial x vector
[dumb,l]=size(x); % Sets loop counter for output matrix
[n m]=size(get);% gets the size of the ic vector (now 'get')
output=zeros(l,m); 
% initializes the output matrix based on ic vector and x vector sizes

% This loop fills the first positions in the output array with the IC
% values
for k=1:m
    output(1,k)=output(1,k)+get(k);
end

% This loop executes the Euler approximation to the soltution to the Diffy.
% Q. supplied by the function 'func'
%{
for i=2:l
    [get]=func(x(i-1),get); 
    % gets the values from the deriv func for present time step
    output(i,1)=output(i-1,1)+get(1,2)*dx; 
    % updates the output array by the Euler method
    output(i,2)=get(1,2);
end
%}
%{%
for i=2:l
    [get]=func(x(i-1),get);
    take=get;
    [get]=func(x(i),get);
    % gets the values from the deriv func for present time step
    output(i,1)=output(i-1,1)+(get(1,2)+take(1,2))/2*dx; 
    % updates the output array by the modified Euler method
    output(i,2)=get(1,2);
end
%}