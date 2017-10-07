clc;
b=[-3 12 17 12 3]/35; a=1;
ecg= detrend(ecg117);
y = filter(b, a, ecg);
subplot(211), plot(y), xlim([1,150]), title ('Відфільтрована ектрокардіограма'), xlabel('t'), ylabel('ecg'); 
subplot(212), plot(ecg), xlim([1,150]), title ('Початкова електрокардіограма'), xlabel('t'), ylabel('ecg'); 



