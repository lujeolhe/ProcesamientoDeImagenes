clc; close all; clear

A=imread('broke_deg.tif');

figure
image(A)
colormap(gray(256))
axis image
title('original')

figure
imhist(A)
title('original')

%B=realce_rango(A, 240, 255, 64, 255);
B=realce_rango_identidad(A, 240, 255, 0);
B=uint8(B);

figure
image(B)
colormap(gray(256))
axis image
title('broke')

figure
imhist(B)
