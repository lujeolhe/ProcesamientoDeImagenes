function [B]=alto_contraste(A, m, E)
  %
  %Funcion de alto contraste
  %s(r)=(L-1)/(1+(m/r)^E)
  %
  %[B]=alto_contraste(A, m, E)
  A=double(A);
  L=256;
  %r=0:(L-1);
  %s=(L-1)./(1+(m./r).^E);
  for i=0:1:L-1
    r(i+1)=i;
    s(i+1)=(L-1)/(1+(m/i)^E);
  endfor
  figure
  plot(r, s)
  %B=(L-1)./(1+(m./A).^E);
  for i=1:size(A, 1)  %i=1:m
    for j=1:size(A,2)  %j=1:n
      Ar=A(i,j);
      B(i,j)=(L-1)/(1+(m/Ar)^E);
    endfor
  endfor
endfunction
