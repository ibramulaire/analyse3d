function res = synthese(passebas,passehaut,signal,detaille)
    f=signal.'
 
    signal = zeros(1,2*size(f,2))
    signal(1:2:end)=f
    signale=conv(signal,passebas,"same")
    d=detaille.'
    detaills=zeros(1,2*size(d,2))
    detaills(1:2:end)=d;
    detaills=conv(detaills,passehaut,"same")
    res=signale+detaills;