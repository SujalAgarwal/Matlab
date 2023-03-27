clear all;
close all;
clc;
t=-10:10;
y=[];
for i=1:length(t)
    if t(i)<0
        y(i)=0
    else 
        y(i)=1
    end
end
    stem(t,y);
    