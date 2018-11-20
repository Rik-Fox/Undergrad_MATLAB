clear variables
clc
x = linspace(-20,20,1024) 	    % Indepentant variable

y = (sin(x))./(x)                       % Dependant variable

figure (1)                  % open a figure window
plot(x,y)                   % plot (x,y)
grid on                     % turn on the grid
xlabel('x')                 % label the x axis
ylabel('x')                 % label the y axis   