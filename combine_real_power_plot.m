

Data_MMG;


x =1:24;

subplot(3,1,1), plot(x,pg1s(x), '-k',x,pg11(x), '-b',x,pg16(x), '-g',x,pg127(x), '-m',x,pg113(x), '-c',x,pevp11(x), '-r',x,pevp12(x), '-y')
ylabel ('Real power (KW)')
xlabel ('Time (Hour)')
legend('Solar PV','BEP','SHP-1','SHP-2','MPHS','BSS-1', 'BSS-2');

subplot(3,1,2),  plot(x,pg29(x), '-k',x,pg24(x), '-b',x,pg21(x), '-g',x,pg23(x), '-m',x,pg214(x), '-r',x,pevp21(x), '-c',x,pevp22(x), '-y')
ylabel ('Real power (KW)')
xlabel ('Time (Hour)')
legend('Solar PV','BEP','SHP-1','SHP-2','MPHS','BSS-1','BSS-2');


subplot(3,1,3), plot(x,pg3s(x), '-k',x,pg31(x), '-b',x,pg36(x), '-g',x,pg325(x), '-m',x,pg329(x), '-c',x,pg345(x), '-r',x,pg361(x), '-y',x,phgp31(x), '-^r',x,phgp32(x), '-^y',x,pevp31(x), '-^g',x,pevp32(x), '-^m'  )
ylabel ('Real power (KW)')
xlabel ('Time (Hour)')
legend('Solar PV','BEP-1','BEP-2','BEP-3','BEP-4','SHP-1','SHP-2','MPHS-1','MPHS-2','BSS-1','BSS-2');






