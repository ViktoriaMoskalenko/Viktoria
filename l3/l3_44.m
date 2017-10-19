clc;
fs=200;
b1=[1/fs 0];
a1=[1 -1];	
b2=[1/fs/2 1/fs/2];
a2=[1 -1];
b3=[1/fs/3 4/fs/3 1/fs/3];
a3=[1 0 -1];
load ecg2x60.dat
y1 = filter(b1, a1, ecg2x60);
figure(1)
subplot(211), plot(y1), xlim([1,150]), title ('Відфільтрована електрокардіограма'), xlabel('t'), ylabel('ecg'); 
subplot(212), plot(ecg2x60), xlim([1,150]), title ('Початкова електрокардіограма'), xlabel('t'), ylabel('ecg');

y2 = filter(b2, a2, ecg2x60);
figure(2)
subplot(211), plot(y2), xlim([1,150]), title ('Відфільтрована електрокардіограма'), xlabel('t'), ylabel('ecg'); 
subplot(212), plot(ecg2x60), xlim([1,150]), title ('Початкова електрокардіограма'), xlabel('t'), ylabel('ecg'); 

y3 = filter(b3, a3, ecg2x60);
figure(3)
subplot(211), plot(y3), xlim([1,150]), title ('Відфільтрована електрокардіограма'), xlabel('t'), ylabel('ecg'); 
subplot(212), plot(ecg2x60), xlim([1,150]), title ('Початкова електрокардіограма'), xlabel('t'), ylabel('ecg'); 