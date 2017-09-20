fs = 200 ; 
T = 1/ fs; 
D =  0.25;
n = 0:1000 ;
r = randn(size(n))*sqrt(D);
s = 1.8*cos(20*pi*n*T) ;        			
x = s+r  ;