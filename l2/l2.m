b=[1 2 1]/4; a=1; n=512; fs=1000;
[h,w]=freqz(b,a,n);
mag=abs(h); phase=angle(h)*180/pi;
subplot(211); plot(w/(2*pi)*fs,mag),grid on
subplot(212), plot(w/(2*pi)*fs,unwrap(phase)),grid on

