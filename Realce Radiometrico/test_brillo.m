clc; close all; clear

pkg load image

A=imread('semilla_clara.tif');

figure; image(A); colormap(gray(256)); axis image; title('original')

figure
imhist(A)         %A debe ser uint8
title('original')

delta=-100;

B=brillo(A, delta);

figure; image(B); colormap(gray(256)); 
axis image; title(['Desplazamiento del histograma \delta=' ...
                  num2str(delta)])

figure
imhist(uint8(B))
title(['Desplazamiento del histograma \delta=' num2str(delta)])
                  

