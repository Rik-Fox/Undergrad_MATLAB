clear variables
clc
t = linspace(0,30,1024); 	    % Indepentant variable

a = 3;
b = (t.^2);
c = sin(t);
d = -1;
e = exp((-t)./5);
y = a*e.*c + d;             %Dependant variable

figure (1)                  % open a figure window
plot(t,y)                   % plot (t,y)
grid on                     % turn on the grid
xlabel('t')                 % label the x axis
ylabel('y')                 % label the y axis   