function myhist(Imagen)
Intensidad2=zeros(256,1);
for i = 1:256
  Intensidad2(i,1)=sum(sum(Imagen==i));
endfor
bar(Intensidad2);


endfunction