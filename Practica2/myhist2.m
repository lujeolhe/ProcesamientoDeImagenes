function myhist2(Imagen)
  Grises=rgb2gray(Imagen);
Intensidad=zeros(4,1); %Niveles de intensidad
auxGrises=(Grises>=0)+(Grises>63)+(Grises>127)+(Grises>191); %Muestreo
Intensidad(1,1)=sum(sum(auxGrises==1)); %Cuantos pixeles hay en cada nivel
Intensidad(2,1)=sum(sum(auxGrises==2));
Intensidad(3,1)=sum(sum(auxGrises==3));
Intensidad(4,1)=sum(sum(auxGrises==4));
figure;
bar(Intensidad); %Mostrar el histograma
endfunction
