r=0.8;
ph1=110*pi/180;
ph2=130*pi/180;
a1=[1 -2*r*cos(ph1) r^2];
a2=[1 -2*r*cos(ph2) r^2];
a=conv(a1,a2);
b=[1/3 1/3 1/3];

n=512;
figure()
[h,w]=freqz(b,a,n);
mag=abs(h); phase=angle(h)*180/pi;
subplot(211); plot(w/(2*pi)*fs,mag),grid on
subplot(212), plot(w/(2*pi)*fs,unwrap(phase)),grid on

% ���������� ���� �� ������ �������
nuli = roots(b)
figure(2)
% ����� ���� �� ������ �������
zplane(nuli)
% ���������� 0.74/1.41=0.52
