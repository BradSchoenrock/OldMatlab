



x=input('Enter a number and then enter ');
if(x>9)
    disp('>9');
else
    disp('<9');
end

%% for loop

figure;
hold on;
a=[0 100 0 100];
axis(a);
for i=1:10
    [x(i) y(i)]=ginput(1);
    plot(x,y,'*');
    axis(a);
end


%% response time experiment

responsetime=1:20;
for i=1:10
    x=rand(1);
    pause(x*3);
    tic;
    input('GO')
    toc;
    responsetime(i)=toc;
    
end

mean(responsetime)







