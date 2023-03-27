clear all;
close all;
clc;
syms t;
s=input('enter the maximum limits of k');
b=input('enter the angular frequency');
T=2*pi/b;
q=input('enter the function in t');
y=inline(q);
a=[];
i=1;
for k=-s:s
    x=@(t)(y(t).exp(-1i*k*b*t));
    a(i)=integral(x,0,T)/T;
    i=i+1;
end
subplot(2,1,1)
stem((-s:s),abs(a));
subplot(2,1,2)
stem((-s:s),angle(a));



