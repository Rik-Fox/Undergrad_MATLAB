clear variables
set(0,'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14)

NT = 256;
r = 3;
x0 = sqrt(2)/10;

X = linspace (0,8,1024);
Y = r*X.*exp(r*(1-X));

x(1) = x0;
y(1) = 0;

for j = 2:2:NT
    x(j) = x(j-1);
    y(j) = r*x(j).*exp(r*(1-x(j)));
    
    x(j+1) = y(j);
    y(j+1) = y(j);
end


figure(1)
plot(X,Y,X,X,x,y)
grid on
xlabel('x_n')
ylabel('x_(n+1)')
title ('Dynamics in the Ricker Map')
