
clc;
b=[1 0.618 1]; a=1;
ecg= detrend(ecg2x60);
y = filter(b, a, ecg);
subplot(211), plot(y), xlim([1,150]), title ('³������������ ���������������'), xlabel('t'), ylabel('ecg'); 
subplot(212), plot(ecg), xlim([1,150]), title ('��������� �����������������'), xlabel('t'), ylabel('ecg'); 
