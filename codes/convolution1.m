clc;
close all;
x1=0; x2=20;
h1=0; h2=20;
xi1=x1+h1;
xi2=x2+h2;
if xi1>xi2
    t=-ceil(xi1):0.01:ciel(xi1);
elseif xi2>xi1
    t=-ceil(xi2):0.01:ceil(xi2);
end
x=cos(t); %i/p signal
h=sin(t); %impulse response
X=zeros(1,length(t));
H=zeros(1,length(t));
H(t<=h2 & t>=h1)=h(t<=h2 & t>=h1); %fitting in range of h
X(t>=x1 & t<=x2)=x(t>=x1 & t<=x2); %fitting in range of x
subplot(4,1,1);
plot(t,X,'r','linewidth',2); grid on; %plotting x(t)
title('x(t)');
subplot(4,1,2);
plot(t,H,'b','linewidth',2); grid on; %plotting h(t)
title('h(t)');
Y=zeros(1,length(t));
for i=xi1:xi2
    H1=fliplr(H); %flipping about vertical axis
    H1=circshift(H1,[0,i]); %Shifting
    a=H1.*X; %Scaling
    Y(t==i)=sum(a);
    subplot(4,1,3);
plot(t,H1,'b',t,X,'r','linewidth',2); grid on;
title('Convolution Y(t)');
subplot(4,1,4);
plot(t,Y,'m','linewidth',2);
title('y(t)');
pause(0.2);
end