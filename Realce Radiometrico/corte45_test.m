clc; close all; clear

%A0=imread('0.png');
%A10=imread('10.png');
%A20=imread('20.png');

while 1 %while infinito
  for i=0:10:100  
    nombre=[num2str(i), '.png']
    A=imread(nombre);
    
    figure(1)
    image(A)
    colormap(gray(256))
    axis image
    title(nombre)
    pause(0.05)
  end
end
