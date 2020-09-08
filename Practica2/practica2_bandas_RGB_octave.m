clc; close all; clear

%octave:
pkg load image

%A=imread('baboon.bmp');  %bmp, jpeg, gif, tif, png
A=imread('lenna.bmp');

%A: uint8, entero de 8 bits sin signo (0,..., 255)

figure
image(A)
axis image

AR=A(:, :, 1); %: todo, 1 banda es el Rojo
%AR imagen de intensidad (una sola matriz)

figure
image(AR)
colormap(gray(256))
axis image
colorbar

mapa=gray(256);

mapaR=mapa;
mapaR(:, 2)=0;
mapaR(:, 3)=0;

%mapaR=zeros(256, 3);
%mapaR(:, 1)=mapa(:, 1);

figure
image(AR)
colormap(mapaR)
axis image
colorbar

mapaG=zeros(256, 3);  %matriz de ceros de 256x3
mapaG(:, 2)=mapa(:, 2);

AG=A(:,:,2);  %componente de verde

figure
image(AG)
colormap(mapaG)
axis image
colorbar

AB=A(:,:,3);  %componente de azul

mapaB=zeros(256, 3);
mapaB(:, 3)=mapa(:, 3);

figure
image(AB)
colormap(mapaB)
axis image
colorbar

Agray=rgb2gray(A);

figure
image(Agray)
colormap(mapa)
axis image
colorbar

mapaY=mapa;
mapaY(:,3)=0;  %componente azul=0


figure
image(Agray)
colormap(mapaY);
axis image
colorbar

%AR, AG, AB   son matrices de mxn
[m, n]=size(AR);

B=zeros(m, n, 3);
B(:, :, 1)=AR;
B(:, :, 2)=AG;
B(:, :, 3)=AB;
B=uint8(B);

figure
image(B)
axis image

[P, mapaP]=imread('pepper_index.bmp');

N=100;

figure
image(P)
colormap(mapaP)
title(['Imagen indexada ' 'pepper ' num2str(N)])
