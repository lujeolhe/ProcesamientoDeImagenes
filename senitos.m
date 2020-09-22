clear all;clc;close all
frec1=36;frec2=1;
t=0:1/70:4;
x_t=sin(2*pi*frec1*t);
x2_t=sin(2*pi*frec2*t);
plot(t,x_t,'r;Seno de 10 Hz;',t,x2_t,'m;Seno de 1 Hz;');
