clc;
b1=[1 -1]; a1=1; n=512; fs=1000;
b2=[0.5 -0.5]; a2=1; 
[h1,w1]=freqz(b1,a1,n)
[h2,w2]=freqz(b2,a2,n)
mag1=abs(h1); phase1=angle(h1)*180/pi;
subplot(211); plot(w1/(2*pi)*fs,mag1),grid on
subplot(212), plot(w1/(2*pi)*fs,unwrap(phase1)),grid on
figure(2)
mag2=abs(h2); phase2=angle(h2)*180/pi;
subplot(211); plot(w2/(2*pi)*fs,mag2),grid on
subplot(212), plot(w2/(2*pi)*fs,unwrap(phase2)),grid on
H1 = filt (a1,b1)
H2 = filt (a2,b2)