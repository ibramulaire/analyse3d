function res = plusm(xe,resm,ondelette)
if(ondelette=="haarn")
res=xe+(resm*1/2);
else
    if(ondelette=="trianglelazy")
       
        res=xe;
    else
        if(ondelette=="trianglen")
           temp=[0,resm]
        temp=temp(1:1:end-1)
        res=xe-((resm+temp)/4);
        end
    end
end

end
