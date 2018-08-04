% firing a shell from the USS wisconsin

clear all

g=9.8;
m=1136.36;
c=.8;
area=.1297;
b=area*c/2/m;
ic=[0;952.6;0;550;0;11.3];
%defines some paramaters i factored out the \rho out of b and will
%add it back in in my function so i can take into account air density
%and temperature as a function of height

[t,y]=ode45(@funkderivs,[0 90],ic,[],b,g);
%ode stuff that calls funkderivs for a function

figure;
hold on;

ttla=('impact zone');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('distance from release point (m)');
ylabel('transverse distance (m)');
zlabel('height (m)');
axis([0 70000  0 4000 0 20000]);
%creates a figure and tells it how big to be, adds labels ect...

plot3(y(:,1),y(:,5),y(:,3),'black*');
%plots path of projectile with air resistance

tempy=y(:,3);
done=0; 
%defines some paramaters to use in my loop

for j= 10:1:size(tempy)
    if tempy(j)<=0 && done==0
        mark1 = j-1;
        mark2= j;
        done=1;
    end
end
%tells me where the zero crossing is in the y data, mark1 is before it 
%hits and mark2 is after it hits

tempx = y(:,1);
tempz = y(:,5);
x1=tempx(mark1)
x2=tempx(mark2)
z1=tempz (mark1)
z2=tempz (mark2)
t1=t(mark1)
t2=t(mark2)
%finds the corrisponding x,z, and t values

%{
in this time interval
t1 =  85.3
t2 =  87.6

the projectile will strike in this range
x1 = 43600
x2 = 44400

with this drifting in the transverse direction
z1 =  963.9
z2 =  990.4
%}