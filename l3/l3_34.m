clc;
a1=[1 -2*r*cos(ph1) r^2];
a2=[1 -2*r*cos(ph2) r^2];
a=conv(a1,a2);
b=[1/3 1/3 1/3];	
load ecg2x60.dat
y = filter(b, a, ecg2x60);
figure(1)
subplot(211), plot(y), xlim([1,150]), title ('Відфільтрована електрокардіограма'), xlabel('t'), ylabel('ecg'); 
subplot(212), plot(ecg2x60), xlim([1,150]), title ('Початкова електрокардіограма'), xlabel('t'), ylabel('ecg'); 