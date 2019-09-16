M=16;
EbNo = 10;
N=3e4;
x = randi([0,M-1],N,1);
k = log2(M);
nsamp = 1;
snr = EbNo +10*log10(k) - 10*log10(nsamp);

figure;
stem(x(1:40),'filled');

tx = qammod(x, M,'Gray');
rx = awgn(tx, snr,'measured');
rx_demod = qamdemod( rx, M, 'Gray' );
[num_err,err] = biterr(x,rx_demod);

figure;
hh = scatterplot(rx(1:nsamp*5e3),nsamp,0,'g.');
hold on;
scatterplot(tx(1:5e3),1,0,'k*',hh);
hold off;
