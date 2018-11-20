clear variables
clc


x = linspace (-20,20,1024);
y = sin(x)./x;

figure(1)
plot(x,y)
grid on
xlabel('x')
ylabel('y')