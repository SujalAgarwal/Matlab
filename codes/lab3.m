clc;
clear all;
close all;
a=audiorecorder(8000,8,1);
p='Enter the time for which you want to proceed: ';
t=input(p);
disp('start speaking:');
recordblocking(a,t);
disp('end of recording');
play(a);
q=getaudiodata(a);
l=length(q);
figure;
plot(q);
prompt='Enter your choice: \n 1. Listen from beginning \n 2. Listen from end \n';
x=input(prompt);
while (x)
    if x==1
        p1='Enter attenuation factor (<l) or amplification factor (>l). Enter 1 for no change.';
        f=input(p1);
        p2='Enter delay time in sec. Enter 0 for no change.';
        g=input(p2);
        p5='1. slow down \ 2. speed up';
        i=input(p5);
        p3='Slow down factor or speed up factor. Enter 1 for no change.';
        e=input(p3);
        if i==2
            r=[zeros(g*8000,1);q(1:e:end)];
            sound(f.*r,8000);
            figure;
            plot(f.*r);
            break;
        elseif i==1
            c=length(q);
            d=zeros(e*c,1);
            d(e:e:end)=q;
            r=[zeros(g*8000,1);d];
            sound(f.*r,8000);
            figure;
            plot(f.*r);
            break;
        else e==1
            r=[zeros(g*8000,1);q(1:e:end)];
            sound(f.*r,8000);
            figure;
            plot (f.*r);
            break;
        end
    elseif x==2
        p1='Enter attenuation factor (<l) or amplification factor (>l). Enter 1 for no change.';
        f=input(p1);
        p2='Enter delay time in sec. Enter 0 for no change.';
        g=input(p2);
        p5='1. slow down \ 2. speed up';
        i=input(p5);
        p3='Slow down factor or speed up factor. Enter 1 for no change.';
        e= input(p3);
        q=flipud(q);
        if i==2
            r=[zeros(g*8000,1);q(1:e:end)];
            sound(f.*r,8000);
            figure;
            plot(f.*r);
            break;
        elseif i==1
            c=length(q);
            d=zeros(e*c,1);
            d(e:e:end)=q;
            r=[zeros(g*8000,1);d];
            sound(f.*r,8000);
            figure;
            plot(f.*r);
            break;
        else e==1
            r=[zeros(g*8000,1);q(1:e:end)];
            sound(f.*r,8000);
            figure;
            plot (f.*r);
            break;
        end
else
    p4='Entered wrong choice';
    disp(p4);
    x=input(prompt);
    break;
    end
end