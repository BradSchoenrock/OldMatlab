clear all;

load('TimingData.mat','-ASCII');
v = TimingData(:,2);
t = TimingData(:,1);
l = 12.8;  % Width of pendulum in millimeters.
sz = size(v,1);

j=1;
% Check to see whether starting voltage is positive or negative.
if v(1) > 0
    sign = 1;
else
    sign = -1;
end

% Find voltage raises/drops.
for i=2:sz
    if v(i) > 0
        if sign == -1
            tu(j) = t(i); % Time when voltage is going up.
            sign = 1;
            j = j + 1;
        end
    end
    if v(i) < 0
        if sign == 1
            td(j) = t(i); % Time when voltage is going down.
            sign = -1;
        end
    end
end

for ii=2:j-1
    dt = tu(ii) - td(ii);
    vel(ii) = l/dt; % mm/s
    if ii > 2
        T(ii) = tu(ii) - tu(ii-2);
    end
end

velocity=0;
for (h=2:j-1)
    velocity=velocity+vel(h);
end
%velocity=velocity/size(vel)
velocity=velocity/(j-2)/1000


period=0;
for(g=2:j-1)
    period=period+T(g);
end
period=period/(j-2)


%{
velocity  =  0.8007  meters/sec
period    =  1.3006  sec
%}

