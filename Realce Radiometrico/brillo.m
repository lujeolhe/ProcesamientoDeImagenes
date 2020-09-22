function [B] = brillo(A, delta);
%
% B = A + delta  
%  
% Aumenta o disminuye el brillo de una imagen
%
%UP-FI 2020

A=double(A);

B=A + delta; 
  
endfunction
