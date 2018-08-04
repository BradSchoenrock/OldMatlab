%this program describes the motion of two blocks, one on a table the other
%attached to it through a hole in the middle of the table. the block on
%the table is allowed to rotate while the other block hangs, creating 
%some very interesting results

clear all

A=.5;
m=.3;
M=.2;
b=1;
g=9.8;
tt=10;
ic=[A;0;0;sqrt(m*g/M/A)/6];
%defines some paramaters

options=odeset('RelTol',1E-5);
[t,y]=ode45(@funkderivs8,[0 tt],ic,options,m,M,g);
%ode stuff that calls funkderivs for a function


figure;
hold on;

ttla=('radial displacement vs. time');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('time in seconds');
ylabel('radial displacement in meters');
axis([0 tt  0 A+.05]);
%creates a figure and tells it how big to be, adds labels ect...

plot(t,y(:,1),'b-');
%plots radial displacement vs. time


figure;
hold on;

ttla=('angular displacement vs. time');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('time in sec');
ylabel('\theta displacement in radians');
axis([0 tt  -.01 tt]);
%creates anothor figure and tells it how big to be, adds labels ect...

plot(t,y(:,3),'b-'); 
%plots angular displacement vs. time


figure;

ttla=('angular displacement vs. radial displacement');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline'];
title(tta)
%creates yet anothor figure and tells it how big to be, adds labels e[ct...

polar(y(:,3),y(:,1),'b'); 
%plots angular displacement vs. radial displacement


%this will find the minimum distance from the hole in the table to the 
%mass on the table
tempy=y(:,1);
x1=A;
%defines some paramaters to use in my loop

for i= 1:1:size(tempy)-1
    if tempy(i+1)>=tempy(i)&&tempy(i)<=x1;
        x1=tempy(i);
    end
end
%x1 is the closest distance the block will get to the hole it starts at 0
%as a default because if the block isn't cycling then it gets sucked into
%the hole


S1=('the minimum value of r is less than or equal to ');
S2=num2str(x1,'%1.02e\n');
S3=('m');
S=[tta S1 S2 S3];
text(-.6,.7,S);
%prints on my polar graph a min value for r

