clear variables
set(0, 'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14);

Ntrans = 1024;
NT = 20;                           % number of times
lambda = 3.7;                     % control parameter
x0 = sqrt(2)/10;                    % inital value of x
epsilon = 0.01;                      %offset of curves

x10 = x0;                           %
x20 = x0 + epsilon;                           %
n(1) = 0;                      % inital n function input (descrete time entry point

for j = 1:Ntrans
    x10 = lambda*x10*(1-x10);
    x20 = lambda*x20*(1-x20);
end

x1(1) = x10;                          % inital x function input
x2(1) = x20;                           % intial offset x input
n(1) = Ntrans;                      % inital n function input (after transience elimination)

for j = 1:NT;                          %loop start:end
    x1(j+1) = lambda*x1(j)*(1-x1(j));      % function of x
    x2(j+1) = lambda*x2(j)*(1-x2(j));       %offset function of x
    n(j+1) = Ntrans + j;                %translates origin from 0 to Ntrans
end

figure(1)
plot(n,x1,'b',n,x2,'r')                       % Plot different curve on one set of axes
grid on
xlabel('Iterate number n')
ylabel('Population x_n')
title('Post Transient dynamics of the logistic map')     %title
legend('Trace 1','Trace 2')
axis([Ntrans Ntrans+NT 0 1])
set(gca,'XTick',Ntrans:5:Ntrans+NT)                   %set scale markings (ticks) 
set(gca,'YTick',0:0.1:1)