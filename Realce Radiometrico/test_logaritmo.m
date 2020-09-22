clc; close all; clear

pkg load image

A=imread('Fourier.tif');

A=constraste(A);

figure
image(A)
colormap(gray(256))
axis image
title('original')

figure
imhist(A)
title('original')


B=logaritmo(A);
B=uint8(B);

figure
image(B)
colormap(gray(256))
axis image
title('log')


figure
imhist(B)  %B.-uint8
title('log')




















