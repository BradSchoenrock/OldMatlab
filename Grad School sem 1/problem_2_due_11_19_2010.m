clear all

x=[0 1 2 0 3];

y=[9.869 20.19 33.21 39.47 48.83];

figure 
plot(x,y,'k*')
title('plot of energy vs. l')
axis([-1 5 5 65])
xlabel('l (unitless)')
ylabel('Energy in units of (h-bar)^2/(2*m*R^2)')