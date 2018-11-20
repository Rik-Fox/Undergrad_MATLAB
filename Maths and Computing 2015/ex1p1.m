clear variables
clc
a = 8;                      % Coefficient of x^3
b = 2;                      % Coefficient of x^2
c = 5;                      % Coefficient of x^1
d = 1;                      % Coefficient of x^0
x = linspace(-1,2,1024)     % Indepentant variable
y = a*x.^3 - b*x.^2 - c*x + d;       % Dependant variable

figure (1)                  % open a figure window
plot(x,y)                   % plot (x,y)
grid on                     % turn on the grid
xlabel('x')                 % label the x axis
ylabel('x')                 % label the y axis   