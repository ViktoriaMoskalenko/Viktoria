clc;
b1=[1 -1]; a1=1; 
b2=[0.5 -0.5]; a2=1;
ecg=detrend(ecg117);
y1 = filter(b1, a1, ecg);
y2 = filter(b2, a2, ecg);
subplot(311), plot(y1), xlim([1,150]), title ('Фільтр y(n) = x(n) - x(n -1)'), xlabel('t'), ylabel('ecg'); 
subplot(312), plot(y2), xlim([1,150]), title ('Фільтр y(n) = (x(n) - x(n - 2))/ 2'), xlabel('t'), ylabel('ecg'); 
subplot(313), plot(ecg), xlim([1,150]), title ('Без фільтру'), xlabel('t'), ylabel('ecg'); 