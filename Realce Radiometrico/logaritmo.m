function [B]=logaritmo(A)
%
%A.- Imagen de entrada
%B.- Imagen de salida (trans. log)
%
%UP-PI 2020

A=double(A);

L=256;

c=(L-1)/(log(1+(L-1)));

r=0:L-1;

s=c*log(1+r);

figure
plot(r, s)
axis([0 L-1 0 L-1])

B=c*log(1+A);








