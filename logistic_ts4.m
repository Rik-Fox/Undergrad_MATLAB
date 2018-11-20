clear variables
set(0,'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14)

Ntrans = 1024;
NT = 40;
lambda = 3.7;
x0 = sqrt(2)/10;
epsilon = 0.01;

x10 = x0;
x20 = x0 + epsilon;
N(1) = 0;

for j = 1:Ntrans
    x10 = lambda*x10*(1-x10);
    x20 = lambda*x20*(1-x20);
end

x1(1) = x10;
x2(1) = x20;
n(1) = Ntrans;

for j = 1:NT
    x1(j+1)= lambda*x1(j)*(1-x1(j));
    x2(j+1)= lambda*x2(j)*(1-x2(j));
    n(j+1) = Ntrans + j;
end

figure(1)
cla
plot(n,x1,'b',n,x2,'r')
grid on
xlabel('Iterate number n')
ylabel('Population x_n')
title ('post transient dynamics of the logistics map')
legend('Trace 1','Trace 2')
axis([Ntrans Ntrans+NT 0 1])
set(gca,'XTick',Ntrans:5:Ntrans+NT)
set(gca,'YTick',0:0.1:1.0)