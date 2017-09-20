clc;
n = 1:1:20;
x1 =  power(0.8,n);
x2 =  power(-0.8,n);
x3 =  power(1.1,n);
x4 =  power(-1.1,n);
figure(2);
subplot(2,2,1 ), stem(n,x1 )
subplot(2,2,2 ), stem(n,x2 )
subplot(2,2,3 ), stem(n,x3 )
subplot(2,2,4 ), stem(n,x4 )