clc; close all; clear

%A=imread('lenna_gray.bmp');
A=imread('baboon_gray.bmp');

mapa=gray(256);

figure
image(A)
colormap(mapa)
axis image

figure
imshow(A)






