clc;
fs = 200 ; 
T = 1/ fs; 
D =  0.25;
n = 0:1000 ;
r = randn(size(n))*sqrt(D);
s = 1.8*cos(20*pi*n*T) ;        			
x = s+r  ;

fprintf('���. ��. ���� = %4.3g\n', mean(r))
fprintf('�������� ���� = %4.3g\n', var(r))
fprintf('���. ��. ������� � ���� = %4.3g\n', mean(x))
fprintf('�������� ������� � ���� = %4.3g\n', var(x))
fprintf('���. ��. ������� = %4.3g\n', mean(s))
fprintf('�������� ������� = %4.3g\n', var(s))
plot(n,x)
