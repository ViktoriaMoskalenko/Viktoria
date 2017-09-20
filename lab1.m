
clc;
N=6;
n=0:N-1;
x=double(n==0);
class(x);
y=double(n==2);
figure(1);
subplot(2,1,1), stem(n,x,'ro-')
subplot(2,1,2), stem(n,y,'ro-')
