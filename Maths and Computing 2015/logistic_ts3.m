clear variables
set(0, 'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14);

NT = 60;                           % number of times
lambda = 3.2;                     % control parameter
x0 = sqrt(2)/10;                    % inital value of x
epsilon = 0.1;                      %offset of curves

x1(1) = x0;                          % inital x function input
x2(1) = x0 + epsilon;
n(1) = 0;                      % inital n function input (descrete time entry point)

for j = 1:NT;                          %loop start:end
    x1(j+1) = lambda*x1(j)*(1-x1(j));      %
    x2(j+1) = lambda*x2(j)*(1-x2(j));
    n(j+1) = j;                %translates origin from 0 to Ntrans
end

figure(1)
plot(n,x1,'b',n,x2,'r')                       % Plot different curve on one set of axes
grid on
xlabel('Iterate number n')
ylabel('Population x_n')
title('time series of the logistic map')     %title
legend('Trace 1','Trace 2')
axis([0 NT 0 1])
set(gca,'XTick',0:5:NT)                   %set scale markings (ticks) 
set(gca,'YTick',0:0.1:1)