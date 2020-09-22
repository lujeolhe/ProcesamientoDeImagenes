clc; close all; clear

pkg load image

%A=imread('semilla.tif');
A=imread('mastografia.tif');

figure
image(A)
colormap(gray(256))
axis image
title('original')

figure
imhist(A)
title('original')

B=negativo(A);
B=uint8(B);

figure
image(B)
colormap(gray(256))
axis image
title('Negativo')

figure
imhist(B)
title('Negativo')







