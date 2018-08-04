%function EulerMain

% This function drives the main Euler function for calculating the solution
% to an ODE using the simplest method known ... Euler's Method

global w A % sets global variables for the derivative
w=5.0;
A=1;
tt=1.5;
B=.5;

hold on;
% time step of 0.5 seconds
[x,output]=EulerMech(@Eulerderiv,0.5,[0 tt],[0 B]); 
plot(x,output(:,1),'b pentagram-')
[x,output]=ModEulerMech(@Eulerderiv,0.5,[0 tt],[0 B]); 
plot(x,output(:,1),'m.-')
plot(x,sin(w*x),'k')
title('Plot of Euler Solutions to the equation dy/dt=\omega*A*cos(\omega*t)')
xlabel('Time (s)')
ylabel('Amplitude (Dimensionless)')
legend('Euler','modified Euler','actual')
hold off;

figure
hold on;
% time step of 0.05 seconds
[x,output]=EulerMech(@Eulerderiv,0.05,[0 tt],[0 B]); 
plot(x,output(:,1),'b pentagram-')
[x,output]=ModEulerMech(@Eulerderiv,0.05,[0 tt],[0 B]);
plot(x,output(:,1),'m.-')
plot(x,sin(w*x),'k')
title('Plot of Euler Solutions to the equation dy/dt=\omega*A*cos(\omega*t)')
xlabel('Time (s)')
ylabel('Amplitude (Dimensionless)')
legend('Euler','modified Euler','actual')
hold off;

figure
hold on;
% time step of 0.005 seconds
[x,output]=EulerMech(@Eulerderiv,0.005,[0 tt],[0 B]);
plot(x,output(:,1),'b pentagram-')
[x,output]=ModEulerMech(@Eulerderiv,0.005,[0 tt],[0 B]);
plot(x,output(:,1),'m.-')
plot(x,sin(w*x),'k')
title('Plot of Euler Solutions to the equation dy/dt=\omega*A*cos(\omega*t)')
xlabel('Time (s)')
ylabel('Amplitude (Dimensionless)')
legend('Euler','modified Euler','actual')
hold off;
