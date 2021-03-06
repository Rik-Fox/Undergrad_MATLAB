clear variables
clc
a = 2;                      % Coefficient of x^2
b = -1;                     % Coefficient of x^1
c = 3;                      % Coefficient of x^0
x = linspace(-3,3,1024)     % Indepentant variable
y = a*x.^2 + b*x + c;       % Dependant variable

figure (1)                  % open a figure window
plot(x,y)                   % plot (x,y)
grid on                     % turn on the grid
xlabel('x')                 % label the x axis
ylabel('x')                 % label the y axis   