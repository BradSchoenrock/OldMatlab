function spheresource

% This function's job is to generate and plot random points in a spherical 
% volume of xyz space givn the radus of the disk.  Then the function 
% genrates a random momentum vector for a photon emminating from each point. 
% This was put togther to visually inspect the algorthm used by the author 
% in a Fortran 77 program for simulating a NaI detector.  The GEANT3.2.1 
% environment doesn't promote visualization as easily as Matlab so he is 
% using this code.  
%
% Author: William Tireman
% Date: June 8, 2009

% --> Necessary variables initialized

po=1173;  % photon momentum  in keV/c 
n=1e4;      % number of photons to generate
rndm=rand(5,n); % setup the random number array all at once instead of 5 calls
r=0.10;  % raduis of the spherical volume in which to generate the photons   

% --> Generate the random momentum vectors 
% This portion generates the random momentum vectors.  To do this, I
% generate points on the surface of a sphere then multiply by the momentum
% which gives a random distribution of momentums on a spherical surface.
% This works very nicely for photons (massless).
%
% Like the disk, this isn't as easy as I would like it to be.  Thanks to an
% online Matlab help site, I found the following formula's to get the x,y,z
% coordinates for an evenly distributed set of points on a spherical
% surface.  The issue, again, is that 'dA' is not simple.  It's 'r sin
% theta, dtheta, dphi ... nice, huh?

th=acos(2*rndm(1,:)-1); % generate the random azimuthal angle and stretch it
phi=2*pi*rndm(2,:);  % generate the random rotational angle
rhod=r.*(rndm(3,:)).^(1/3);% generate the random radial position and stretch
zd=rhod.*cos(th);           % calculate the x,y,z coordinates
xd=rhod.*sin(th).*cos(phi);
yd=rhod.*sin(th).*sin(phi);
%figure            % plot and view
%plot3(xd,yd,zd,'.r')     % plot the random points in 3D to confirm
%title('Plot of random points on a spherical surface')

% --> Convert the random points to the system you wish.  In this case that
% means momentum space (keV/c)

z = 2*rndm(4,:)-1;  % Generate a set of random points on the 'z' axis
rho = sqrt(1 - z.^2); % get the location of radial vector from 'z' points.
                      % You could multiply by a constant to make any size
                      % you want for the sphere.
phi = pi*(2*rndm(5,:) - 1);  % generate the necesary random angle
x = rho .* cos(phi);  % calculate the 'x' coordinate
y = rho .* sin(phi);  % calculate the 'y' coordinate
%figure
%plot3(x,y,z,'.r')     % plot the random points in 3D to confirm
%title('Plot of random points on a spherical surface')
pzp = po*z;           % multiply the momentum for all three coordinates
pyp = po*y;
pxp = po*x;
%p=sqrt(pxp.^2+pyp.^2+pzp.^2)
figure
plot3(pxp,pyp,pzp,'.r') % plot the points in 3D for viewing 
title('Momentum space plot (3D) for the randomly generated points')
xlabel('Component ''x'' of the momentum (keV/c)')
ylabel('Component ''y'' of the momentum (keV/c)')
zlabel('Component ''z'' of the momentum (keV/c)')

% --> Next is a cool 3D plot of the with arrows representing the momentum
% vectors from each of the vertex points.
figure
quiver3(xd,yd,zd,pxp,pyp,pzp)
hold on;
plot3(xd,yd,zd,'.r')
title('Plot of the momentum vectors (arrows) for the sphere')
xlabel('Component ''x'' of the momentum (keV/c)')
ylabel('Component ''y'' of the momentum (keV/c)')
zlabel('Component ''z'' of the momentum (keV/c)')

