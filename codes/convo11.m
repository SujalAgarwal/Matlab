clear all;
close all;
clc;
x1=0; x2=20;
h1=0; h2=20;
xi1=x1+h1;
xi2=x2+h2;
if xi1>xi2
    t=-ceil(xi1):0.01:ceil(xi1);
else if xi2>xi1
        t=-ceil(xi2):0.01:ceil(xi2);
    end
end

x=(t);
h=sin(t);
X=zeros(1,length(t));
H=zeros(1,length(t));
H(t<=h2 & t>=h1)=h(t<=h2 & t>=h1);
X(t<=h2 & t>=h1)=x(t<=h2 & t>=h1);
subplot(4,1,1)
plot(t,X,'r');
subplot(4,1,2)
plot(t,H,'b')
Y=zeros(1,length(t));
for i=xi1:xi2
    H1=fliplr(H);
    H1=circshift(H1,[0,i]);
    a=H1.*X;
    Y(t==i)=sum(a);
    subplot(4,1,3)
    plot(t,H,'r',t,X,'b');
    subplot(4,1,4);
    plot(t,Y,'g');
end
    
