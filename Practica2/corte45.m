clc; close all; clear

n=0;
nombre=[num2str(n) '.png'];

img=imread(nombre);

figure
image(img)
colormap(gray(256))
axis image

