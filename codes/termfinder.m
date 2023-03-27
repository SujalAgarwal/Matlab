clear all;
close all;
clc;
x=1:10;
i=0;
found=0;
while ~found
    i=i+1;
    if x(i)==7;
        found=1;
        disp('I found it');
        disp(x(i));
    end
end

        