clear variables
clc
x = linspace(-1,3,1024); 	    % Indepentant variable
y = x.^4 - 3*x.^3 + x;              % Depentant variable
c = [1 -3 0 1 0];                    %Matrix of coefficients
sols = roots(c);               %roots of y = 0
disp(['Solutions of y = 0 are :']);     % display message in command window
disp([mat2str(sols)])           % use 'mat2str' to display a matrix

figure (1)                  % open a figure window
plot(x,y)                   % plot (t,y)
grid on                     % turn on the grid
xlabel('x')                 % label the x axis
ylabel('y')                 % label the y axis   