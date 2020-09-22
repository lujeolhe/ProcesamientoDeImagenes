function B=realce_rango_identidad(A, rmin, rmax, smax)
%
%A.-Imagen de intensidad 
%[rmin, rmax] rango de niveles de gris de entrada a realzar
%smin.- valor de salida fuera del rango 
%smax.- valor de salida dentro del rango
%
% B=realce_rango_indentidad(A, rmin, rmax, smax);
%
%UP_PI 2020

A=double(A);

B=A;

idx=find(A>=rmin & A<=rmax);

B(idx)=smax;
  
endfunction
