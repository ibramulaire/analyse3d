function [aprox,details] = analyse1niveau(signal,ondelette)
Xe=signal (1:2:end); 
Xo=signal (2:2:end);   

m=moins(Xe,Xo,ondelette);

p=plusm(Xe,m,ondelette);


if(ondelette=="haarn")
details=(-1/2*m);
aprox=p;
else
    
     details=m;
     aprox=p;  
        
    
end
end


            
    
%S

