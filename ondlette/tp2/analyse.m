function [signale,detaills] = analyse(passehaut,passebas,signal)
    f=signal.';
    signale=conv(f,passebas,"same");
    detaills=conv(f,passehaut,"same");
    signale=signale (1:2:end); 
    detaills=detaills (1:2:end); 