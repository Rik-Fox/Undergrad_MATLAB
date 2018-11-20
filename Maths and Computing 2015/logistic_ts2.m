clear variables
set(0, 'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14);

Ntrans = 1024;                      % number of times iterate the map in transient time domain
NT = 40;                           % number of times
lambda = 3.835;                     % control parameter
x0 = sqrt(2)/10;                    % inital value of x

for j = 1:Ntrans;               % loop start:end
    x0 = lambda*x0*(1-x0);          % new value of x0 based on previous value of x0
                                       
end

x(1) = x0;                          % inital x function input
n(1) = Ntrans;                      % inital n function input (descrete time entry point)

for j = 1:NT;                          %loop start:end
    x(j+1) = lambda*x(j)*(1-x(j));      %
    n(j+1) = Ntrans + j;                %translates origin from 0 to Ntrans
end

figure(1)
cla
plot(n,x)                       % Plot 3 different curve on one set of axes
grid on
axis square
xlabel('Iterate number n')
ylabel('Population x_n')
title('Post-transient time series of the logistic map')     %title
axis([Ntrans Ntrans+NT 0 1])
set(gca,'XTick',Ntrans:5:Nstrans+NT)                   %set scale markings (ticks) 
set(gca,'YTick',0:0.1:1)