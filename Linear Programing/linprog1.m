%linear program Brad Schoenrock

%{
the canonical form is 

    min z=f*x          f has been our c
    st  A*x<=b         <= means less than or equal to
                       A is the part of our A matrix that corresponds to 
                       the inequality constraints
    Aeq*x=beq          Aeq is the part of our A matrix that is associated
                       with equality constraints
    lb<=x<=ub          lb is lower bound and ub is the upper bound

%}

clear all;
f = [-5; -4; -6];
A =  [1 -1  1
      3  2  4
      3  2  0];
b = [20; 42; 30];
lb = [0 0 0];

[x,fval,exitflag,output,lambda] = linprog(f,A,b,[],[],lb);

%{
starts with output stuff
x is a vector of the variables
fval is the optimal value for the objective function
exit flag is a number that tells you the reason for the termination 
    of the algorithm
output is a structure that tells you certian other things such as the
    number of iterations
lambda is the values of the lagrange multipliers (AKA dual variables)

for the inputs we of course need to pass it f,a,&b
the next two spots are for equality constraints
first the A matrix associated with the equalities
then the b vector that goes with the equalities
next we need to pass the lower bound for x 
and after that we can pass it the upper bound for x

your output comes out in the workspace. if you double click on an option 
you can see what the values of the variables are, the value for the 
objective function, or even the reason for termination in exitflag
%}

