clear all;
close all;
clc;
syms t w;
a=input('enter the lower limit');
b=input('enter the upper limit');
n=input('enter the limit');
q=input('enter the function');
y=inline(q);
y1=@(t,w)y(t).*exp(-1i*w*t);
X=@(w)integral(@(t)y1(t,w),a,b);
i=1;
for w=-n:n
    A(i)=X(w);
    i=i+1;
end
subplot(2,1,1)
stem(-n:n, abs(A));
subplot(2,1,2)
stem(-n:n,angle(A));



