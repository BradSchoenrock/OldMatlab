function derivs=Eulerderiv(t,D)

% Derivatives for the Euler function call of dy/dt=wAcos(wt)
global w A

derivs=[D(1),w*A*cos(w*t)];
