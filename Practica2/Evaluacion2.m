clear all; close all;
pkg load image
for j = 0:10
n=0;
for i = 1:11
  nombre=['./imagenes/' num2str(n) '.png'];
Imagen=imread(nombre);
figure 1;
image(Imagen);
colormap(gray(256))
pause(1/11);
n+=10;
endfor
endfor
