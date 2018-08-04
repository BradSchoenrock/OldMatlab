%this program plots the moorse potential

clear all;

D=5;
B=0.2;
R=0.75;
r=(-50:.1:50)';

F1=D*(1-exp(-B*(r-R))).^2;
F2=(r-R).^2*D*B*B;

figure;
hold on;

ttla=('Potential vs. radial distance');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('r (nm)');
ylabel('Potential (eV)');
axis([0  10  -1 5]);

plot(r,F1,'black-');
text(7.5,2.5,'U(r)-');
plot(r,F2,'black*');
text(1,4.5,'taylor expanded potential *');

hold off