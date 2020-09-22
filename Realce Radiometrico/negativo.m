function [B]=negativo(A)
%
%A.-Imagen de Entrada
%B.-Negativo de la Imagen de Entrada
%
%UP-PI 2020

A=double(A);

L=256;
r=0:(L-1);

s=(L-1) - r;

figure
plot(r, s)
axis([0 L-1 0 L-1])

B=(L-1) - A;











  
endfunction
