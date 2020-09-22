clc; close all; clear

%leemos la imagen del tigre
A=imread('./imagenes/tiger.tif');
%Hacemos una copia de nuestra imagen
A_aux=A;
%separamos los canales de la imagen
Red=A(:,:,1);
Green=A(:,:,2);
Blue=A(:,:,3);
%se crea la mascara para invertit los canales
Mascara=255*ones(size(Red)(1),size(Red)(2));

figure
myhist(Red);
title 'Histograma canal rojo'

figure
myhist(Green);
title 'Histograma canal verde'

figure
myhist(Blue);
title 'Histograma canal azul'
%se invierten los canales
RedInvet=Mascara-Red;
GreenInvet=Mascara-Green;
%BlueInvet=Mascara-Blue;

%se modiifca el canal invertido en la imagen copia 
A_aux(:,:,1)=RedInvet;
A_aux(:,:,2)=GreenInvet;
%A_aux(:,:,3)=BlueInvet;

figure
myhist(RedInvet);
title 'Histograma canal rojo'

figure
myhist(GreenInvet);
title 'Histograma canal verde'

figure
myhist(Blue);
title 'Histograma canal azul'

figure
subplot(1,2,1)
image(A)
subplot(1,2,2)
image(A_aux)
%escribimos la imagen procesada en el archivo tiger2.tif
imwrite(A_aux, "./imagenes/tiger2.tif");
