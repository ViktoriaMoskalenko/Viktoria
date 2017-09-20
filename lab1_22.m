clc;
fs = 200 ; 
T = 1/ fs; 
D =  0.25;
n = 0:1000 ;
r = randn(size(n))*sqrt(D);
s = 1.8*cos(20*pi*n*T) ;        			
x = s+r  ;

fprintf('Мат. сп. шуму = %4.3g\n', mean(r))
fprintf('Дисперсія шуму = %4.3g\n', var(r))
fprintf('Мат. сп. сигналу і шуму = %4.3g\n', mean(x))
fprintf('Дисперсія сигналу і шуму = %4.3g\n', var(x))
fprintf('Мат. сп. сигналу = %4.3g\n', mean(s))
fprintf('Дисперсія сигналу = %4.3g\n', var(s))
plot(n,x)
