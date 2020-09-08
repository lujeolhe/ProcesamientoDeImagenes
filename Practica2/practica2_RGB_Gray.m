clc; close all; clear

A=imread('baboon.bmp');

figure
image(A)
axis image

%AR=A(1:1:512, 1:1:512, 1); %componente roja
AR=A(:, :, 1); %leer todas las filas, todas las columnas, banda 1: rojo

figure
image(AR)
colormap(gray(256))  %para imágenes de 8 bits se usan 256 niveles de gris
axis image
colorbar
title('Red')

AG=A(:, :, 2);  % banda 2: verde

figure
image(AG)
colormap(gray(256))  %para imágenes de 8 bits se usan 256 niveles de gris
axis image
colorbar
title('Green')

AB=A(:, :, 3);

figure
image(AB)
colormap(gray(256))  %para imágenes de 8 bits se usan 256 niveles de gris
axis image
colorbar
title('Blue')

%Agray=rgb2gray(A);
%promedio de las tres bandas:
%(R + G + B)/3 = 0.333*R + 0.333*G + 0.333*B

%0.299*R + 0.587*G + 0.114*B:
Agray=0.299*AR + 0.587*AG + 0.114*AB; %imagen de intensidad (luminancia)

figure
image(Agray)
colormap(gray(256))
axis image
colorbar

figure
image(Agray)
colormap(bone(256))
axis image
colorbar

figure
image(Agray)
colormap(hot(256))
axis image
colorbar

figure
image(Agray)
colormap(cool(256))
axis image
colorbar

figure
image(Agray)
colormap(hsv(256))
axis image
colorbar

figure
image(Agray)
colormap(pink(256))
axis image
colorbar



































