N = 200 ;
n=0:N-1;
x =cos(pi*n/16)  ;
figure(3);
subplot(3,1,1 ), stem(n,x,'ro-' )
subplot(3,1,2 ), plot(n,x,'r-' )
subplot(3,1,3 ), stairs(n,x,'r-' )