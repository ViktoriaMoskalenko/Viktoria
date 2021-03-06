clc;
%=== �������� #1.1 ===
% ������������ ��������� ������� 2-�� ������� 
fs = 200 ;
fc = 20;         
r=0.9; 
phi = 2*pi*fc/fs;
b = [1 0 -1] ;                    % ��������� C� 
a =  [1 -2*r*cos(phi) r^2];	% ���������


%=== �������� #1.2 ===
% ��� �� ��� ��������� ������� 2-�� �������
n=512;
figure()
[h,w]=freqz(b,a,n);
mag=abs(h); phase=angle(h)*180/pi;
subplot(211); plot(w/(2*pi)*fs,mag),grid on
subplot(212), plot(w/(2*pi)*fs,unwrap(phase)),grid on
... ������ ���������� ���� �������
...

% ���������� ���� �� ������ �������
nuli = roots(b)
figure(2)
% ����� ���� �� ������ �������
zplane(nuli)
