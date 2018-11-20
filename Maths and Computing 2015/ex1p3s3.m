clear variables
clc
x = linspace(-1,1,1024); 	    % Indepentant variable
y = 2*x.^2 + 1;              % Depentant variable
c = [2 0 1];                    %Matrix of coefficients
sols = roots(c);               %roots of y = 0
disp(['Solutions of y = 0 are :']);     % display message in command window
disp([mat2str(sols)])           % use 'mat2str' to display a matrix

figure (1)                  % open a figure window
plot(x,y)                   % plot (t,y)
grid on                     % turn on the grid
xlabel('x')                 % label the x axis
ylabel('y')                 % label the y axis   