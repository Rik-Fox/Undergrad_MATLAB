clear variables
set(0, 'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14);

NT = 60;
n = 0:1:NT;
lambda = 2.0;
x0 = sqrt(2)/10;

x(1) = x0;

for j = 1:NT;
    x(j+1) = lambda*x(j)*(1-x(j));
end

figure(1)
plot(n,x)
xlabel('Iterate number n')
ylabel('Population x_n')