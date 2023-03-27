n=input('enter the terms in which you want to find number of even terms');
x=1:n;
y=0;
for i=1:n
    if mod(x(i),2)==0
       y=y+1;
    end
end
display(y);
        