% analysis of diode data

clear all;

load('tenloopb.mat','-ASCII');

tdata=sortrows(tenloopb,2);

id=tdata(:,1);
vd=tdata(:,2);
k=size(vd,1);

j=1; % this is how many data points
ti=0; % this is the temperary current
tic=0; % this is the temperary current counter

for i=1:k-1
    if(i~=k-1)
        if(vd(i+1)==vd(i))
            tic=tic+1;
            ti=ti+id(i);
        else
            tic=tic+1;
            ti=ti+id(i);
            nvdr(j)=vd(i);
            nidr(j)=ti/tic;
            tic=0;
            ti=0;
            j=j+1;
        end
    else
        if(vd(k)==vd(k-1))
            ti=ti+id(k)+id(k-1);
            tic=tic+2;
            nvdr(j)=vd(i);
            nidr(j)=ti/tic;
            ti=0;
            tic=0;
        else
            ti=ti+id(k-1);
            tic=tic+1;
            nvdr(j)=vd(k-1);
            nidr(j)=ti/tic;
            ti=0;
            tic=0;
            j=j+1;
            nvdr(j)=vd(k);
            nidr(j)=id(k);
        end
    end
end

jj=1;
for l=1:j-1
    if(nidr(l+1)-nidr(l)>0)
        did(jj)=nidr(l+1)-nidr(l);
        dvd(jj)=nvdr(l+1)-nvdr(l);
        yd(jj)=log(did(jj)/dvd(jj));
        nvd(jj)=nvdr(l)+.5*dvd(jj);
        jj=jj+1;
    end
end

% plot linearized data
figure
plot(nvd,yd,'r*');
ttla=('I V curve for diode');
tt2='Brad Schoenrock';
tta=[ttla,'\newline',tt2,date];
title(tta)
xlabel('X');
ylabel('Y');

% start linear regresion
y=yd';
x=nvd;

n(:,2)=x;
n(:,1)=ones(size(jj));
c=n\y;

slope=c(2);
yintercept=c(1);

vt=1/slope;
is=(vt)*exp(yintercept);


sp='The Vt value is ';
s=num2str(1/slope);
st=[sp,s];

sk= 'number of data points is ';
stt=num2str(jj);
stn=[sk,stt];

si='The Is value is ';
Is=num2str(is);
sti=[si,Is];

xp=[min(x):(max(x)-min(x))/100 :max(x)]';
yp=c(2)*xp+c(1);

figure;
hold on
plot(x,y,'r*');
plot(xp,yp,'b-');
plot(max(x),max(y),'w.');
plot(max(x),max(y),'w.');
plot(max(x),max(y),'w.');
legend('Data','Fitted Line',st,sti,stn,2)
legend('boxoff')
t1='I V Curve for a diode';
t3='Brad Schoenrock';
t0='\newline';
t=[t1,t0,t3,t0,date];
title(t)
xlabel('voltage, V, (volts)')
ylabel('current, i, (amps)')

%%%%%

nid=is*(exp(vd./(1/slope))-1);

ss=(nid-id)'*(nid-id);
ssdp=ss./size(vd,1);


figure;
hold on
plot(vd,nid,'b*');
plot(vd,id,'b-');
plot(max(vd),max(nid),'w.');
plot(max(vd),max(nid),'w.');
plot(max(vd),max(nid),'w.');
tyu=['sum of squares ',num2str(ss)];
toy=['ss per data point ',num2str(ssdp)];
tie=['# of data points is ',num2str(size(vd,1))];
legend('Data','Fitted Line',tyu,toy,tie,2)
legend('boxoff')
t1='I V Curve for a diode';
t3='Brad Schoenrock';
t0='\newline';
t=[t1,t0,t3,t0,date];
title(t)
xlabel('voltage, V, (volts)')
ylabel('current, i, (amps)')

