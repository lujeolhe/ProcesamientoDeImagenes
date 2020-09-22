function [B] = potencia(A, gamma)
%
%A.-Imagen de intensidad (uint8)
%
%B=c*(A^gamma)
%
%B.-Imagen de salida con transf. de potencia
%
%UP-PI 2020

A=double(A);

% s=c*(r^gamma)
% para r=(L-1) y s=(L-1):
% c=s/(r^gamma) = (L-1)/((L-1)^gamma)

L=256;  % numero de niveles de gris para imagenes de 8 bits
c=(L-1)/((L-1)^gamma);

r=0:(L-1); %posibles niveles de gris de entrada
s=c*(r.^gamma);  %gamma=2, r^2 = r*r

figure
plot(r, s)
axis( [0 (L-1) 0 (L-1)] )

B=c.*(A.^gamma);













 














endfunction
