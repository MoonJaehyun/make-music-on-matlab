clear
len = 2;
Fs = 8192;
%%Jaehyun_Moon

tt = 0:1/Fs:len;

x0= 1.33*cos(2*pi*295*tt);
x1 = 107*cos(2*pi*353*tt);
x2 = 60*cos(2*pi*706*tt);
x3 = 16*cos(2*pi*1061*tt);
x4=  14*cos(2*pi*1414*tt);
x5=  33*cos(2*pi*1767*tt);
x6=  11*cos(2*pi*2121*tt);
x7=  2*cos(2*pi*2474*tt);
x8=  2.6*cos(2*pi*2828*tt);

subplot(4,1,1);
plot(tt(1:200), x1(1:200)), grid on
subplot(4,1,2);
plot(tt(1:200), x2(1:200)), grid on
subplot(4,1,3);
plot(tt(1:200), x3(1:200)), grid on
xall= x0+x1+x2+x3+x4+x5+x6+x7+x8;
subplot(4,1,4);
plot(tt(1:100), xall(1:100)), grid on
plot(tt(1:200), xall(1:200)), grid on

xall= x0+x1+x2+x3+x4+x5+x6+x7+x8;
amol= DSP_ADSR (0.15,0.1,0.3,0.8,0.7, xall);
soundsc(amol)