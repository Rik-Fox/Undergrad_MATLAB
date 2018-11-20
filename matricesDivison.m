clear variables
clc
x = linspace(-10,10,1024);

P = 3*x.^3 - 1;
Q = 5*x.^4 - 3*x +2;
y = P./Q;

figure(1)
plot(x,y)
grid on
xlabel('x')
ylabel('y')