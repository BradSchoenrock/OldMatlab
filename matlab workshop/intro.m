%Matlab M file for an intro to matlab as a research tool
%Brad Schoenrock

%%do some matrix math

Close all; clear all; clc;

A=[1 0;0 1];
B=[0 1;1 0];
C=[1 2;3 4];
y=B*C
Z=A*B

a=[1 2 3 4 5];
b=[6 7 8 9 11];
c=[12 23 34 45 56];
d=[23 34 49 56 67];
e=[98 87 73 65 54];

m1=[a; b; c]

m2=[m1; d; e]



%% fun

plot(sort(rand([1 100])))

%% do something else

t = linspace(0,2.5*pi,40);
       fact = 10*sin(t);
       fig=figure;
       aviobj = avifile('example.avi')
       [x,y,z] = peaks;
       for k=1:length(fact)
           h = surf(x,y,fact(k)*z);
           axis([-3 3 -3 3 -80 80])
           axis off
           caxis([-90 90])
           F = getframe(fig);
           aviobj = addframe(aviobj,F);
       end
       close(fig)
       aviobj = close(aviobj);
       
       
       %% do some more stuff
       
       x=rand([1,2])
       im = imread('ngc6543a.jpg');
       h=image(im)
     %  [x,y]=ginput(1)
       
       %% another section
       
       x=linspace(1,100);
       y=rand([100 1]);
       y=sort(y);
       plot(x,y)
       plot(x,y,'r*')
       
       
       
       
       %% yet another section
       
       figure
       axis([0 100 0 100]);
       [x y]=ginput(10);
       plot(x,y,'dr');
       p=polyfit(x,y,1)
       
       hold on;
       s=[num2str(p(1)) '*x+' num2str(p(2))]
       ezplot(s,[0 100 0 100]);
       hold off;
       
       
       
       %% function
       
       
       