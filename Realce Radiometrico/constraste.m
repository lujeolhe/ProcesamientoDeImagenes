function [B]=contraste(A)
%
%A.- Imagen de entrada
%B.- Imagen de salida con alto constrast
%
%UP-PI 2020

A=double(A); %convertir a double

a=min(A(:));
%a=min(min(A));

b=max(A(:));

L=256;

p=(L-1)/(b-a);

r=a:1:b;
%r=a:b;

s=p*(r-b) + (L-1);

figure
plot(r, s)
axis([a b 0 255])  %[xmin xmax ymin ymax]

B=p*(A-b) + (L-1);



















endfunction
