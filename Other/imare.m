n=256;
theta=0:179;
P=phantom('Modified Shepp-Logan', n);

[R,xp]=radon(P,theta);
theta1 = 0:10:100; [R1,xp] = radon(P,theta1);
theta2 = 0:5:175;  [R2,xp] = radon(P,theta2);
theta3 = 0:2:178;  [R3,xp] = radon(P,theta3);





figure
imshow(P);
title('Original image');
  
figure
imshow(R,[],'Xdata',theta,'Ydata',xp);

title('sinogram,(projection of an object recorded on detectors)');
E=iradon(R1,10);
F=iradon(R2,5);
Q=iradon(R3,2);
figure
imshow(E);
title('inverse radon from 0degree to 100degree with increment of 10');
figure
imshow(F);
title('reconstructed image with iradon between angle 0 to 175 with increment of 5 degree');
figure
imshow(Q);
title('reconstructed image with iradon between angle 0 to 178  with 2 degree increment');