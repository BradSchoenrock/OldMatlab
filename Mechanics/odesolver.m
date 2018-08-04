clear all

g=9.8;
m=30;
p=1;
c=.8;
area=.2;
b=area*c*p/2/m;
ic=[0;44.44;80;0];
%defines some paramaters

[t,y]=ode45(@funkderivs,[0 5],ic,[],b,g);
%ode stuff that calls funkderivs for a function

figure;
hold on;

ttla=('impact zone');
tt2='Brad Schoenrock ';
tta=[ttla,'\newline',tt2,'\newline',date];
title(tta)
xlabel('distance from release point');
ylabel('height');
axis([0 200  0 100]);
%creates a figure and tells it how big to be, adds labels ect...

i=44.44*t;
j=-g*t.^2/2+80;
plot(i,j,'r-');
text(95,65,'path of projectile without air resistance','color','red');
%plots path of projectile without air resistance

plot(y(:,1),y(:,3),'b-');
text(2,45,'path of projectile with air resistance','color','blue');
%plots path of projectile with air resistance

tempy=y(:,3);
done=0; 
%defines some paramaters to use in my loop

for i= 1:1:size(tempy)
    if tempy(i)<=0 & done==0
        mark1 = i-1;
        mark2= i;
        done=1;
    end
end
%tells me where the zero crossing is in the y data, mark1 is before it 
%hits and mark2 is after it hits

tempx = y(:,1);
x1=tempx(mark1)
x2=tempx(mark2)
%finds the corrisponding x values

S1=('the impact is between ');
S2=num2str(x1);
S3=('m and ');
S4=num2str(x2);
S5=('m from the release point');
S=[S1 S2 S3 S4 S5];
text(2,95,S);
%prints on my graph a range for where the impact is
