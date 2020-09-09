function myhist(Imagen)
  Grises=rgb2gray(Imagen);
Intensidad2=zeros(256,1);
for i = 1:256
  Intensidad2(i,1)=sum(sum(Grises==i));
endfor
figure;
bar(Intensidad2);


endfunction
