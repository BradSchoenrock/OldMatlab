function disksource

% This function's job is to generate and plot random points on a disk in xyz
% space givn the radus of the disk.  Then the function genrates a random
% momentum vector for a photon emminating from each point.  This was put
% togther to visually inspect the algorthm used by the author in a Fortran
% 77 program for simulating a NaI detector.  The GEANT3.2.1 environment
% doesn't promote visualization as easily as Matlab so he is using this
% code.  
%
% Author: William Tireman
% Date: June 8, 2009

% --> Necessary variables initialized

po=1173;  % photon momentum  in keV/c 
n=1e2;        % number of photons to generate
r=0.020;      % raduis of the disk surface on which to generate the photons
rndm=rand(4,n); % generate all the necessary random in one call instead of 4

% --> Creating the disk --- this is the source of the photon vertices
% There is a problem when trying to assign an evenly distributed set of
% numbers to the surface of a disk ... the diff. area 'dA' One must work
% out the issue with the 'r^2' or the points will concentrate near the
% center.  Thus, the variable 'u' is used to stretch the radial arm.

u=rndm(1,:);  % random number array for streching radial position.
th=2*pi*rndm(2,:);   % random angle generated for the disk
xd=r*sqrt(u).*sin(th); % projection of random point onto the 'x' coordinate
yd=r*sqrt(u).*cos(th); % projection of random point onto the 'y' coordinate 
%xd=zeros(1,n);          % for a single point instead of a disk
%yd=zeros(1,n);          % for a single point instead of a disk
zd=0.025*ones(1,n); % generate the disk a distance of 2.5 cm from the origin
%figure
%plot3(xd,yd,xd,'.b')   % if you really want to see the random disk points       

% --> Generate the random momentum vectors 
% This portion generates the random momentum vectors.  To do this, I
% generate points on the surface of a sphere then multiply by the momentum
% which gives a random distribution of momentums on a spherical surface.
% This works very nicely for photons (massless).
%
% Like the disk, this isn't as easy as I would like it to be.  Thanks to an
% online Matlab help site, I found the following formulast to get the x,y,z
% coordinates for an evenly distributed set of points on a spherical
% surface.  The issue, again, is that 'dA' is not simple.  It's 'r sin
% theta, dtheta, dphi ... nice, huh?

z = 2*rndm(3,:)-1;  % Generate a set of random points on the 'z' axis
rho = sqrt(1 - z.^2); % get the location of radial vector from 'z' points.
                      % You could multiply by a constant to make any size
                      % you want for the sphere.
phi = pi*(2*rndm(1,:) - 1);  % generate the necesary random angle
x = rho .* cos(phi);  % calculate the 'x' coordinate
y = rho .* sin(phi);  % calculate the 'y' coordinate
%figure
%plot3(x,y,z,'.r')     % plot the random points in 3D to confirm
%title('Plot of random points on a spherical surface')

% --> Convert the random points to the system you wish.  In this case that
% means momentum space (keV/c)
pzp = po*z;           % multiply the momentum for all three coordinates
pyp = po*y;
pxp = po*x;
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
title('Plot of the momentum vectors (arrows) from the disk')
xlabel('Component ''x'' of the momentum (keV/c)')
ylabel('Component ''y'' of the momentum (keV/c)')
zlabel('Component ''z'' of the momentum (keV/c)')

