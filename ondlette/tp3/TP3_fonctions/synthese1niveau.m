function [signal] = synthese1niveau(aprox,details,ondelette)
 n=size(aprox,2)
 m=size(details,2)
 signal=zeros(1,m+n)

m=moinsS(aprox,details,ondelette);
p=plusS(details,m,ondelette);

signal (1:2:end)=m; 
signal (2:2:end)=p;          
end


