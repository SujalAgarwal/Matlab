clear all;
close all;
clc;
recorder=audiorecorder;
recordblocking(recorder,4);
play(recorder);
y=getaudiodata(recorder);
plot(y);