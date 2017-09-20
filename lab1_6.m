pks = pksdetect(x);
t=1:1/1000:2;
x = 3*sin(6*pi*t)+5*sin(16*pi*t);
plot(t,x,'k-');hold on;
plot(t(pks),x(pks),'k*');hold off;
xlabel('time(s)'); ylabel('x(t)');