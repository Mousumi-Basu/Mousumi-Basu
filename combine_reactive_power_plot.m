

Data_MMG;


x =1:24;

subplot(3,1,1), plot(x,pg11(x), '-k',x,pg16(x), '-b',x,pg127(x), '-g')
ylabel ('Reactive power (KVAr)')
xlabel ('Time (Hour)')
legend('BEP','SHP-1','SHP-2');

subplot(3,1,2),  plot(x,pg24(x), '-k',x,pg21(x), '-b',x,pg23(x), '-g')
ylabel ('Reactive power (KVAr)')
xlabel ('Time (Hour)')
legend('BEP','SHP-1','SHP-2');


subplot(3,1,3), plot(x,pg31(x), '-k',x,pg36(x), '-b',x,pg325(x), '-g',x,pg329(x), '-m',x,pg345(x), '-c',x,pg361(x), '-r' )
ylabel ('Reactive power (KVAr)')
xlabel ('Time (Hour)')
legend('BEP-1','BEP-2','BEP-3','BEP-4','SHP-1','SHP-2');






