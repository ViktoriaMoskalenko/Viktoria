clc;
b = [1 0 -1] ;                   
a =  [1 -2*r1*cos(phi) r^2];	
ecg=detrend(ecg105);
y = filter(b, a, ecg);
subplot(211), plot(y), xlim([1,150]), title ('³������������ �����������������'), xlabel('t'), ylabel('ecg'); 
subplot(212), plot(ecg), xlim([1,150]), title ('��������� �����������������'), xlabel('t'), ylabel('ecg'); 