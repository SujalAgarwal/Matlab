clear all;
close all;
clc;
voice=audiorecorder;
recordblocking(voice,6);
data=getaudiodata(voice);
a=input('enter the amplification factor');
data1=data.*a;
b=input('enter the attenuation factor');
data2=data.*b;
c=input('enter the speed up factor');
data3=data(1:c:end);
d=input('enter the slow down facor');
e=1/d;
data4=data(1:e:end);
f=input('enter the time delay you want');
data5=[zeros(8000*f,1);data];
data6=flipud(data);
subplot(4,2,1)
plot(data);
title('original signal')
subplot(4,2,2)
plot(data1);
title('amplified signal')
subplot(4,2,3)
plot(data2);
title('attenuated signal')
subplot(4,2,4)
plot(data3);
title('speeed up signal')
subplot(4,2,5)
plot(data4);
title('slow down signal')
subplot(4,2,6)
plot(data5);
title('delayed signal')
subplot(4,2,7)
plot(data6);
title('flipped signal')


