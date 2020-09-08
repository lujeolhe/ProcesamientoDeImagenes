clear all;
close all;
pkg load image

[Imagen, mapa]=imread("./imagenes/lena.jpg");
figure; image(Imagen);

AuxImageRed=Imagen;
AuxImageGreen=Imagen;
AuxImageBlue=Imagen;

AuxImageGreen(1:1000,1:1500,1)=0;
AuxImageGreen(1:1000,1:1500,3)=0;

AuxImageRed(1:1000,1:1500,2)=0;
AuxImageRed(1:1000,1:1500,3)=0;

AuxImageBlue(1:1000,1:1500,1)=0;
AuxImageBlue(1:1000,1:1500,2)=0;

colormap(mapa);
figure; imhist(Imagen);

AuxImageGrayScale=Imagen;
GrayScaleVector=rgb2gray(Imagen);
AuxImageGrayScale(1:1000,1:1500,1)=GrayScaleVector;
AuxImageGrayScale(1:1000,1:1500,2)=GrayScaleVector;
AuxImageGrayScale(1:1000,1:1500,3)=GrayScaleVector;

figure; image(AuxImageGrayScale);

figure; image(AuxImageRed);
figure; image(AuxImageGreen);
figure; image(AuxImageBlue);