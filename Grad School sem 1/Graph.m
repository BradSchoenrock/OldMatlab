clear all;

s='P29pg';
st=s;

drive = 'I';
yyy=load(strcat('I:\projects\jina\jinalib\Schoenrock\fitting rates with MC\fitting rates with MC\',s,'.txt'),'-ascii');
try
    zzz=load(strcat('I:\projects\jina\jinalib\Schoenrock\fitting rates with MC\fitting rates with MC\',s,'_now_param.txt'),'-ascii');
catch
    zzz=load(strcat('I:\projects\jina\jinalib\Schoenrock\fitting rates with MC\fitting rates with MC\',s,'_param.txt'),'-ascii');
end
x=yyy(:,1);%raw temps
fx=yyy(:,2);%raw rates

A0=zzz(:,1);
A1=zzz(:,2);
A2=zzz(:,3);
A3=zzz(:,4);
A4=zzz(:,5);
A5=zzz(:,6);
A6=zzz(:,7);

y=zeros(size(x));
size(A1)
for jj=1:size(A1)
    if(jj~=0)
    temp=exp(A0(jj)+A1(jj)./x+A2(jj).*x.^(-1/3)+A3(jj).*x.^(1/3)+A4(jj).*x+A5(jj).*x.^(5/3)+A6(jj).*log(x));
    y=y+temp;
%    figure
%    loglog(x,temp,'k*')
    end
end

figure
loglog(x,fx,'b*',x,y,'b-')
title(strcat('total fit for ',st))
xlabel('temp in GK')
ylabel('rate in cm^3 s^(-1) mol^(-1)')

legend('raw data','fitted curve',4);
legend('boxoff')

dif=(y-fx)./(y+fx)*200;
ok=max(abs(dif));
figure
if(ok>10)
    semilogx(x,dif,'b*',x,5,'r',x,-5,'r',x,10,'r',x,-10,'r')
else
    semilogx(x,dif,'b*',x,5,'r',x,-5,'r')
end
title(strcat('percent difference vs temp for ', st))
xlabel('temp in GK')
ylabel('percent difference between fit and data')
