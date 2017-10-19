clc;
b1 = [1 0 -1] ;                   
a1 =  [1 -2*r2*cos(phi) r^2];		
ecg1=detrend(ecg105);
y1 = filter(b1, a1, ecg);
b2 = [1 0 -1] ;                   
a2 =  [1 -2*r3*cos(phi) r^2];	
ecg2=detrend(ecg105);
y2 = filter(b2, a2, ecg);
figure(1)
subplot(211), plot(y1), xlim([1,150]), title ('Відфільтрована електрокардіограма'), xlabel('t'), ylabel('ecg'); 
subplot(212), plot(ecg1), xlim([1,150]), title ('Початкова електрокардіограма'), xlabel('t'), ylabel('ecg');
figure(2)
subplot(211), plot(y2), xlim([1,150]), title ('Відфільтрована електрокардіограма'), xlabel('t'), ylabel('ecg'); 
subplot(212), plot(ecg2), xlim([1,150]), title ('Початкова електрокардіограма'), xlabel('t'), ylabel('ecg');