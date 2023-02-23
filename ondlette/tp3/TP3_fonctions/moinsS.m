function res = moinsS(ak,dk,ondelette)
if(ondelette=="haarn")
res=ak-(-2*dk)*1/2;
else
    if(ondelette=="trianglelazy")
     
        res=ak;
    else
        if(ondelette=="trianglen")
         temp=[0,dk]
        temp=temp(1:1:end-1)
        res=ak-((dk+temp)/4);
        end
    end
end

end
