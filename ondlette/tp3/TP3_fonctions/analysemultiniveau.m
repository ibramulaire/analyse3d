function  [aprox,details]= analysemultiniveau(signal,ondelette)
   
 taille=size(signal,2);

 n=log2(taille);
details=zeros(1,taille-1);


for c = 1:n
[aprox,details]=analyse1niveau(signal,ondelette);
detail=

   
end











end





