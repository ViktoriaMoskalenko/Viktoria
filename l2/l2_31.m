clc;
b=[1 0.618 1]; a=1; n=512; fs=200;
[h,w]=freqz(b,a,n);
mag=abs(h); phase=angle(h)*180/pi;
subplot(311); plot(w/(2*pi)*fs,mag),grid on
subplot(312), plot(w/(2*pi)*fs,unwrap(phase)),grid on
nuli = roots(b)
figure(2)
zplane(nuli)
filt(b,a)
% k(z)=1+0.618*z^-1+1*z^-2


