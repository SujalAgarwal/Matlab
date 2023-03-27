clear all;
close all;
clc;
[sigma omega]=meshgrid(-20:0.1:20);
s=sigma+j*omega;
h=abs((s)/((s-3).*(s)));
mesh(sigma,omega,h);