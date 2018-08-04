clear all;

s='Si26pg';
st=s;

zzz=load(strcat('\\intranet.nscl.msu.edu\files\user\schoenro\My Documents\Visual Studio 2010\Projects\fitting rates with MC\fitting rates with MC\',s,'.txt'),'-ascii');
yyy=load(strcat('\\intranet.nscl.msu.edu\files\user\schoenro\My Documents\Visual Studio 2010\Projects\fitting rates with MC\fitting rates with MC\_reaclib\',s,'_reaclib','.txt'),'-ascii');

x=zzz(:,1);
y=zzz(:,2);

A0=yyy(:,1);
A1=yyy(:,2);
A2=yyy(:,3);
A3=yyy(:,4);
A4=yyy(:,5);
A5=yyy(:,6);
A6=yyy(:,7);

%a0=xxx(:,1);
%a1=xxx(:,2);
%a2=xxx(:,3);
%a3=xxx(:,4);
%a4=xxx(:,5);
%a5=xxx(:,6);
%a6=xxx(:,7);

fx=zeros(size(x));
fit=zeros(size(x));
for jj=1:size(A6)
    temp=exp(A0(jj)+A1(jj)./x+A2(jj).*x.^(-1/3)+A3(jj).*x.^(1/3)+A4(jj).*x+A5(jj).*x.^(5/3)+A6(jj).*log(x));
    fx=fx+temp;
end

%for ii=1:size(a6)
%    temp2=exp(a0(ii)+a1(ii)./x+a2(ii).*x.^(-1/3)+a3(ii).*x.^(1/3)+a4(ii).*x+a5(ii).*x.^(5/3)+a6(ii).*log(x));
%    fit=fit+temp2;
%end

figure
loglog(x,y,'b*',x,fx,'g-')
title(strcat('iliadis data reaclib fit ', st))

diff1=(y./fx-1)*100;
diff2=(fx./y-1)*100;
if (max(abs(diff1))>max(abs(diff2)))
    diff=diff1;
else
    diff=diff2;
end

maximum=0;
minimum=0;
for u=18:37
    if(diff(u,1)>maximum)
        maximum=diff(u,1);
    end
    if(diff(u,1)<minimum)
        minimum=diff(u,1);
    end
end
maximum
minimum

figure
semilogx(x,diff,'b*',x,5,'r-',x,-5,'r-')
title(strcat('residuals between iliadas data and reaclib fit for ',st))
axis([0.075 3 min(minimum*1.1,-5) max(maximum+1,5)])



%dif=(fit-fx)*2./(fx+fit)*100;

%figure
%semilogx(x,dif,'k*')
%title(strcat('difference between reaclib and my fit for ',st))

