function [gm, gvar] = prop_hist(A)
%
%Calcula las propiedades estadísticas del 
%histograma
%
%gm = prop_hist(A)
%
%A.-Imagen de intensidad de 8 bits (uint8)
%gm.-Nivel de gris promedio
%
%UP 2020

[M, N]=size(A);

A=uint8(A);  %convierte a uint8 la matriz A

h=imhist(A);

p=h/(M*N);   %histograma normalizado

g=0:1:255;   %ini=0, inc=1, final=255

gm=g*p;    %g vector de 1x256, p vector de 256x1
                   %(1x256)*(256x1)= 1x1
                   
 gvar=((g-gm).^2)*p; %(1x256)*(256x1)
                   
                   
                   
                   











