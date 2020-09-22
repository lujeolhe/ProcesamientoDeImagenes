function B=realce_rango(A, rmin, rmax, smin, smax)
%
%A.-Imagen de intensidad 
%[rmin, rmax] rango de niveles de gris de entrada a realzar
%smin.- valor de salida fuera del rango 
%smax.- valor de salida dentro del rango
%
% B=realce_rango(A, rmin, rmax, smin, smax);
%
%UP_PI 2020

A=double(A);

B=zeros(size(A));
B=B+smin;

idx=find(A>=rmin & A<=rmax);

B(idx)=smax;
  
endfunction
