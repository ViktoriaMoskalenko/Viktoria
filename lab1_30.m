pec1 = load('pec1.dat');
fs = 1000;
fcg = pec1(:, 1); 
ecg = pec1(:, 2); 
cps = pec1(:, 3);
t = (0:length(fcg) - 1)/fs;
figure()
subplot(311), plot(t,fcg), xlim([1,4]), title ('Фонокардіограма'), xlabel('t'), ylabel('fcg'); 
subplot(312), plot(t,ecg), xlim([1,4]), title ('Електрокардіограма'), xlabel('t'), ylabel('ecg'); 
subplot(313), plot(t,cps), xlim([1,4]), title ('Сигнал каритодного пульсу'), xlabel('t'), ylabel('cps'); 
