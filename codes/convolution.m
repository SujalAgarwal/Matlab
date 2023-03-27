clear all;
close all;
clc;
x=[];
h=[];
t=-1:0.1:5;
for i=1:length(t)
    if t(i)<0
        x(i)=0;
        h(i)=0;
    else if (t(i)>=0 && t(i)<=2)
            x(i)=1;
            h(i)=exp(-t(i));
        else
            x(i)=0;
            h(i)=exp(-t(i));
        end
    end
end
    m=length(x);
    n=length(h);
    X=[x,zeros(1,n)];
    H=[h,zeros(1,m)];
    y=[];
    for i=n+m-1
        y(i)=0;
        for j=1:m
            if(i-j+1>0)
                y(i)=y(i)+X(j).*H(i-j+1);
            end
        end
    end
    subplot(3,1,1)
    plot(x);
    title('step function');
    subplot(3,1,2)
    plot(h);
    title('exponential function');
    subplot(3,1,3)
    plot(y);
    title('convoluted signal');
    
    
                
