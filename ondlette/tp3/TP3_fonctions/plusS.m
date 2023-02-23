function res = plusS(dk,resm,ondelette)
if(ondelette=="haarn")
res=(-2*dk)+resm;
else
    
        temp=[resm,0];
        temp=temp(2:1:end);
        res=dk+(resm+temp)/2;
    
    
end

end