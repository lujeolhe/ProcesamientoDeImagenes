clc; close all; clear

pkg load image

A=imread('lenna_gray.bmp');

figure
image(A)
colormap(gray(256))
axis image

figure
imhist(A)

h=zeros(256, 1); %imagenes de 8 bits (256 grises)

[m, n]=size(A);

for i=1:m %filas
  for j=1:n %columnas
    r=A(i,j);  %posi<bles valores de r=0,....,255
    %e.g, r=0
    h(r+1)=h(r+1)+1;
  end
end

figure
stem(h, 'Marker', 'none')
axis([0 255 0 max(h)])


    
   
    
  
  
  
  
  






