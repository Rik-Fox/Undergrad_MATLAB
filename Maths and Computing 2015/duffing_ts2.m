clear variables
set(0, 'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14);

Ntrans = 1024;
NT = 40;                                % number of times to complete the loop
A = 2.5;                                % independant value
B = 0.05;                               % Conrtol parameter
x0 = 0.75;                              % x start value
y0 = 0.0;                                  % y start value
epsilon = 0.001;

x10 = x0;                           %
x20 = x0 + epsilon; 
y10 = y0;
y20 = epsilon;                      %
n(1) = 0;                      % inital n function input (descrete time entry point

for j = 1:Ntrans
    x10 = B*x10*(1-x10);
    x20 = B*x20*(1-x20);
    y10 = B*y10*(1-y10);
    y20 = B*y20*(1-y20);
end


n(1) = Ntrans;                       %n value
y1(1) = y10;
y2(1) = y20;                               %intial y value
x1(1) = x10;                      %intial x value
x2(1) = x20;

for j = 1:NT;                                   %loop for running function with x and y
    y1(j+1) = -B*x1(j) + A*y1(j) - y1(j)^3;
    x1(j+1) = y1(j);
    y2(j+1) = -B*x2(j) + A*y2(j) - y2(j)^3;
    x2(j+1) = y2(j);
    n(j+1) = j;
end

figure(1)
plot(n,x1,'b',n,x2,'y',n,y1,'r',n,y2,'m')
grid on
axis ([0 NT -1.5 1.0])
xlabel('Iterate number n')
title('Time series of the Duffing map')
legend('x_n','y_n')