clc; close all; clear

%para octave:
%pkg load image

%leer archivo lenna_gray.png:
A=imread('lenna_gray.bmp');

%leer archivo de matlab lena.mat:
%load lena


figure
image(A)
colormap(gray(256))
%%
%figure
%imhist(A)

h=imhist(A);

figure
%plot(h)
stem(h, 'Marker', 'none')

[M, N]=size(A);

h=h/(M*N);

figure
stem(h, 'Marker', 'none')

[gm, gvar] = prop_hist(A)













