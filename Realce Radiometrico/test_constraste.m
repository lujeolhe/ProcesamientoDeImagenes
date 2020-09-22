clc; close all; clear

pkg load image

A=imread('FotoL.jpg');

figure
image(A)
colormap(gray(256))
axis image
title('original')

figure
imhist(A)
title('original')


B=constraste(A);
B=uint8(B);

figure
image(B)
colormap(gray(256))
axis image
title('alto contraste')


figure
imhist(B)  %B.-uint8
title('alto constraste')

figure
imagesc(A)
colormap(gray(256))
axis image
title('original con imagesc')





















