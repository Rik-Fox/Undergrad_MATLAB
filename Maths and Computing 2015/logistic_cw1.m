clear variables
set(0, 'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14);

NT = 256;                           % number of times
lambda = 3.835;                     % control parameter
x0 = sqrt(2)/10;                    % inital value of x

X = linspace(0,1,1024);             % x axis plot
Y = lambda*X.*(1-X);                % parabola of map

x(1) = x0;                          % inital x function input
y(1) = 0;                            % intial y function input

for j = 2:2:NT;                         %for loop / define loop end and start
    x(j) = x(j-1);                      % define starting value of x for loop
    y(j) = lambda*x(j)*(1-x(j));       % define the function
                                        %^Take value to the map (up step)
    x(j+1) = y(j);
    y(j+1) = y(j);                      % take value to the 45 line
                                        %(along step)                                     
                                       
end

figure(1)
plot(X,Y,X,X,x,y)                       % Plot 3 different curve on one set of axes
grid on
axis square
xlabel('x_n')
ylabel('x_(n+1)')
title('Dynamics in the logistic map')              %title
set(gca,'XTick',0:0.1:1)                   %set scale markings (ticks) 
set(gca,'YTick',0:0.1:1)