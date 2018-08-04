%linear program Brad Schoenrock
% book page 79

% maximization problem 
% the output gives the negitive of the functional value
% example of how the exit flag is used
% after setting x2=x2'-x2" & x3=x3'-x3" and substituting
clear all;
f = [2 1 -1 1 -1 2];

A =  [-1 1 -1 -1 1 1;
      1 1 -1 -1 1 -1;
      -1 -1 1 1 -1 1;
      -1 1 -1 1 -1 -1;];
b=[1; -1; 1; -2;];

Aeq=[1 -1 1 1 -1 -1;
    -1 -1 1 -1 1 -1;];
beq=[-1; -3;];

lb = [0 0 0 0 0 0];

[x,fval,exitflag,output,lambda] = linprog(f,A,b,[],[],lb);

% note that the exit flag is -3 this coresponds to problem is unbounded
% there are codes dictating what the exit flag means they are

%{
the output in the command window is

Exiting: One or more of the residuals, duality gap, or total relative error
 has stalled:
         the dual appears to be infeasible and the primal unbounded since
         the primal objective < -1e+10
         and the dual objective < 1e+6.

exit flags

1  Function converged to a solution x.

0  Number of iterations exceeded options.MaxIter.

-2 No feasible point was found.	

-3 Problem is unbounded.
 	
-4 NaN value was encountered during execution of the algorithm. 	

-5 Both primal and dual problems are infeasible.

-7 Search direction became too small. No further progress could be made.
%}