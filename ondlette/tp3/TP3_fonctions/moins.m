function res = moins(xe,xo,ondelette)
if(ondelette=="haarn")
res=(xo-xe);
else
    if(ondelette=="trianglelazy")
        temp=[xe,0];
        temp=temp(2:1:end);
        res=xo-((xe+temp)/2);
    else
        if(ondelette=="trianglen")
             temp=[xe,0];
             temp=temp(2:1:end);
             res=xo-((xe+temp)/2);
        end
    end
end

end
