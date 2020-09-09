clear all; close all;
pkg load image
Imagen=imread("./imagenes/lena8bits.png");
figure;
image(Imagen);
%Grises=(Imagen(:,:,1)+Imagen(:,:,2)+Imagen(:,:,3))/3;
Grises=rgb2gray(Imagen);
figure;
image(Grises);
colormap(gray(256));
Intensidad=zeros(4,1); %Niveles de intensidad
auxGrises=(Grises>=0)+(Grises>63)+(Grises>127)+(Grises>191); %Muestreo
Intensidad(1,1)=sum(sum(auxGrises==1)); %Cuantos pixeles hay en cada nivel
Intensidad(2,1)=sum(sum(auxGrises==2));
Intensidad(3,1)=sum(sum(auxGrises==3));
Intensidad(4,1)=sum(sum(auxGrises==4));
figure;
bar(Intensidad); %Mostrar el histograma
Intensidad2=zeros(256,1);
for i = 1:256
  Intensidad2(i,1)=sum(sum(Grises==i));
endfor
figure;
bar(Intensidad2);


