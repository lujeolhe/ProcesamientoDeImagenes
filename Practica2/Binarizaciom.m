clear all;close all;clc
Imagen=imread("./imagenes/lena8bits.png");
figure;
image(Imagen);
grises=Imagen(:,:,1)+Imagen(:,:,2)+Imagen(:,:,3);
Binarizacion=255*(grises<200);
figure;
image(Binarizacion);
colormap(gray(256));