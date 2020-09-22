clc; close all; clear

pkg load image;

%A=imread('perfil_2019.jpg');
%A=rgb2gray(A);

A=imread('semilla.tif');

figure
image(A)
colormap(gray(256))
axis image
title('original')

figure
imhist(A)
title('original')

m=127;
E=5;
B=alto_cotraste(A, m, E);
B=uint8(B);

figure; image(B); colormap(gray(256)); axis image; title('alto contraste')

figure; imhist(B); title('alto contraste')


