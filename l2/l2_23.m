clc;
b1=[-3 12 17 12 3]/35; a=1;
b2=[0.25 0.5 0.25];
ecg= detrend(ecg117);
y1 = filter(b, a, ecg);
y2 = filter(b2, a, ecg);
subplot(211), plot(y1), xlim([1,50]), title ('ектрокардіограма (поліномінальний фільтр)'), xlabel('t'), ylabel('ecg'); 
subplot(212), plot(y2), xlim([1,50]), title ('ектрокардіограма (фільтр Хеннінга)'), xlabel('t'), ylabel('ecg'); 



