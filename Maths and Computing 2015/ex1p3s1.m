clear variables
clc
x = linspace(-1,1.5,1024); 	    % Indepentant variable
y = -3*x.^2 + 2*x + 1;              % Depentant variable
c = [-3 2 1];                    %Matrix of coefficients
sols = roots(c);               %roots of y = 0
disp(['Solutions of y = 0 are :']);     % display message in command window
disp([mat2str(sols)])           % use 'mat2str' to display a matrix

figure (1)                  % open a figure window
plot(x,y)                   % plot (t,y)
grid on                     % turn on the grid
xlabel('x')                 % label the x axis
ylabel('y')                 % label the y axis   