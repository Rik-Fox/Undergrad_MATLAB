clear variables
clc
z = linspace(-10,10,1024); 	    % Indepentant variable

a = tanh;
c = 3z-2;
e = 2z.^3 +1;
y = tanh(e./c);

figure (1)                  % open a figure window
plot(z,y)                   % plot (t,y)
grid on                     % turn on the grid
xlabel('z')                 % label the x axis
ylabel('y')                 % label the y axis   