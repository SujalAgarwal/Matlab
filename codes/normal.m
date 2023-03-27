clear all;
close all;
clc;
y=[];
t=-10:10;
for n=-10:10
    y(n)=sin(t(n));
end
plot(y,t)
