clear variables
set(0,'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14)

NT = 60;
n = 0:1:NT;
r = 0.5;
x0 = sqrt(2)/10;

x(1) = x0;

for j = 1:NT
    x(j+1)= j.*exp(r*(1-j));
end

figure(1)
plot(n,x)
xlabel('Iterate number n')
ylabel('Population x_n')