%linear program Brad Schoenrock
% book page 110

%maximization problem with equality constraint
%the output gives the negitive of the functional value

clear all;

f = [-1; 2; 4; 2];

A =  [-1 -2 1 -1;
      4 3 4 -2;];
b=[0; 3];

Aeq=[-1 -1 2 1;];
beq=[1];

lb = [-999999999 0 0 0];

[x,fval,exitflag,output,lambda] = linprog(f,A,b,Aeq,beq,lb);

