clc;
b=[0.25 0.5 0.25]; a=1;
ecg=detrend(ecg117);
y = filter(b, a, ecg);
subplot(211), plot(y), xlim([1,150]), title ('³������������ ���������������'), xlabel('t'), ylabel('ecg'); 
subplot(212), plot(ecg), xlim([1,150]), title ('��������� �����������������'), xlabel('t'), ylabel('ecg'); 



