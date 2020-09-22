clc; close all; clear

pkg load image

A=imread('semilla_oscura.tif');

figure; image(A); colormap(gray(256)); axis image; title('original')

figure
imhist(A)         %A debe ser uint8
title('original')

gamma=2;
B=potencia(A, gamma);
B=uint8(B); 

figure; image(B); colormap(gray(256)); 
axis image; title(['Transf. de potencia \gamma=' num2str(gamma)]);

figure; imhist(B); title(['Transf. de potencia \gamma=' num2str(gamma)]);

 
