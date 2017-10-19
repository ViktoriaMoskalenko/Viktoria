clc;
fs=200;
b=[1/fs/3 4/fs/3 1/fs/3];
a=[1 0 -1];
n=512; fs=200;
[h,w]=freqz(b,a,n);
mag=abs(h); phase=angle(h)*180/pi;
figure(1)
subplot(211); plot(w/(2*pi)*fs,mag),grid on
subplot(212), plot(w/(2*pi)*fs,unwrap(phase)),grid on
% Обчислення нулів та полюсів фільтру
nuli = roots(b)
figure(2)
% Карта нулів та полюсів фільтру
zplane(nuli)
filt(b,a)
