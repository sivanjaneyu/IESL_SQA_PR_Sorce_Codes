function [ydif,zerocross]=siv_peakanno_AMDF(ym)
ydif=gradient(ym);
%ydif=siv_moving_avg_fil(ydif,3);
ydif(1:3)=0;
ydif=ydif/max(abs(ydif));
%plot(ydif);grid on;
zerocross=siv_neg_zero_cross(ydif);
if zerocross(1)==1
    zerocross(1)=max(ym);
end