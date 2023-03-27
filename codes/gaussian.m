t=-10:0.01:10;
y=exp(-2j*(t.^2));
subplot(2,1,1)
plot(t,y)
subplot(2,1,2)
plot(t,fft(y));