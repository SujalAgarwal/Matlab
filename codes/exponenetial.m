clear all;
close all;
clc;
t=-10:10;
y=[];
for i=1:length(t)
   y(i)=exp(t(i))
end
stem(t,y)
