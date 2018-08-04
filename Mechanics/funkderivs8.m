function derivs=funkderivs8(t,y,m,M,g)

derivs=[y(2);(M*y(1)*y(4)*y(4)-m*g)/(M+m);y(4);-2/y(1)*y(2)*y(4)];
