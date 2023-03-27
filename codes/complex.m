clear all;
close all;
clc;
th=-pi:0.001:pi;
x=exp(1i.*th);
a=real(x);
b=imag(x);
subplot(2,1,1)
plot3(a,b,th);
subplot(2,1,2)
plot(a,b);

