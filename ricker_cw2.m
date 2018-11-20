clear variables
set(0, 'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14);

Ntrans = 1024;
NT = 256;                           % number of times
r = 3;                     % control parameter
x0 = sqrt(2)/10;                    % inital value of x

X = linspace(0,8,1024);             % x axis plot
Y = r*X.*exp(r*(1-X));                % parabola of map

for j = 1:Ntrans
    x0 = r*x0.*exp(r*(1-x0));
end

x(1) = x0;                          % inital x function input
y(1) = x0;                            % intial y function input

for j = 2:2:NT;                         %for loop / define loop end and start
    x(j) = x(j-1);                      % define starting value of x for loop
    y(j) = r*x(j).*exp(r*(1-x(j)));       % define the function
                                        %^Take value to the map (up step)
    x(j+1) = y(j);
    y(j+1) = y(j);                      % take value to the 45 line
                                        %(along step)                                     
                                       
end


figure(2) %period attractor
plot(X,Y,X,X,x,y)                       % Plot 3 different curve on one set of axes
grid on
axis square
xlabel('x_n')
ylabel('x_(n+1)')
title('Post-transient Dynamics in the Ricker map')              %title
