clear variables
clc
x = linspace(-10,10,1024) 	    % Indepentant variable

P = 3*x.^3 - 1                  % Define numerator fuction P(x)
Q = 5*x.^4 - 3*x + 2            % Define denominator function Q(x)
y = P./Q                       % Dependant variable

figure (1)                  % open a figure window
plot(x,y)                   % plot (x,y)
grid on                     % turn on the grid
xlabel('x')                 % label the x axis
ylabel('x')                 % label the y axis   