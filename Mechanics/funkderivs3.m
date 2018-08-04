function derivs=funkderivs3(t,y,C,w)

derivs=[y(2);-(C*abs(y(2))*y(2)+w*w*y(1))];

