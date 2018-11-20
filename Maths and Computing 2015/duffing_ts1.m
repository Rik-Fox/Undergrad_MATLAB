clear variables
set(0, 'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14);

NT = 40;                                % number of times to complete the loop
A = 2.5;                                % independant value
B = 0.27;                               % Conrtol parameter
x0 = 0.75;                              % x start value
y0 = 0.0;                                  % y start value

n(1) = 0;                       %n value
y(1) = y0;                      %intial y value
x(1) = x0;                      %intial x value

for j = 1:NT;                                   %loop for running function with x and y
    y(j+1) = -B*x(j) + A*y(j) - y(j)^3;
    x(j+1) = y(j);
    n(j+1) = j;
end

figure(1)
plot(n,x,'b',n,y,'r')
grid on
axis ([0 NT -1.5 1.0])
xlabel('Iterate number n')
title('Time series of the Duffing map')
legend('x_n','y_n')