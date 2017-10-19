clc;
fs=200;
b=[1/fs 0];
a=[1 -1];
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
mag1=reshape(mag, 1, 512);
f=0:1:(length(mag)-1);
mag0=1./(2*pi*f); loglog(f,mag0,f,mag1)

err=(mag1-mag0)*100 

figure,plot(f,err)