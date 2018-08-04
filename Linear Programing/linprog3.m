%linear program Brad Schoenrock
% book page 101

% maximization problem 
% the output gives the negitive of the functional value

 clear all;
f = [-1; -2; -1; 3; -1; -1; 1];

A =  [1 1 0 -1 0 2 -2;
      0 1 0 -1 1 -2 2;
      0 1 1 0 0 1 -1;
      0 1 0 -1 0 -1 1;];
b=[6; 4; 2; 1;];

lb = [0 0 0 0 0 0 0];

[x,fval,exitflag,output,lambda] = linprog(f,A,b,[],[],lb);

