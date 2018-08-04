function derivs=funkderivs(t,y,b,g)

p=352.38*((1-.0065/(288.15-.0065*y(3))*y(3))^5.252)/(288.15-.0065*y(3));
%gives p as a function of height with height varying temperature

derivs=[y(2);-b*p.*y(2)*y(2);y(4);-b*p.*y(4)*y(4)-g;y(6);0];

