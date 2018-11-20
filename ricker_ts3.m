clear variables
set(0,'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14)


NT = 60;
r = 3;
x0 = sqrt(2)/10;
epsilon = 0.0001;

x1 = x0;
x2 = x0 + epsilon;


for j = 1:NT
    x1(j+1)= r*x1(j).*exp(r*(1-x1(j)));
    x2(j+1)= r*x2(j).*exp(r*(1-x2(j)));
    n(j+1) = j;
end

figure(1)
cla
plot(n,x1,'b',n,x2,'r')
grid on
xlabel('Iterate number n')
ylabel('Population x_n')
title ('post transient dynamics of the logistics map')
legend('Trace 1','Trace 2')
axis([0 NT 0 1])
set(gca,'XTick',0:5:NT)
set(gca,'YTick',0:0.1:1.0)