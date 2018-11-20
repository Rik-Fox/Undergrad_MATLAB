clc
clear variables
set(0, 'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14);

N = 512;                                % number of value within linspace range (iterations
x0_vec = linspace(0.7,0.9,N);            % x value matrix
y0_vec = linspace(-0.7,-0.5,N);              % y value matrix

NT = 1024;                           % number of times
A = 0.71;                     % control parameter
B = -0.9;                    % inital value of x
tol = 1e-3;                      %tolerence for period 2 
tol_max = 100;                  %tolerence for diverging to infty

for k = 1:N                    %Loop to cycle through y values
    k
    y0 = y0_vec(k);
    
    for kk = 1:N                %Loop to cycle through every x value for specific y value
        x0 = x0_vec(kk);
        
        x(1) = x0;
        y(1) = y0;
        
        for j = 1:NT                        % Loop to determine dynamics at each x value
            x(j+1) =  A - (x(j))^2 - B*y(j);                      %x(2) = y(1)
            y(j+1) = x(j);                                  %y(2) = function of x(1) and y(1)
            
            if abs(x(j+1)) >= tol_max || abs(y(j+1)) >= tol_max % condition to determine if
                P(k,kk) = 0;                                   % diverge to infty
                break                   % if met stop loop
            else                                % otherwise do nothing        
            end
        end
        
        if j == NT    % if loop not broken before completetion, loop determine period
            
            if abs(x(NT) - x(NT-2)) <= tol      %if last and the third last value are within tolerence 
                P(k,kk) = 2;
            else
                P(k,kk) = 6;            % otherwise set p = 6
            end
        else
        end
    end
end


figure(4)                                   % figure window
pcolor(x0_vec,y0_vec,P);                       % Plot 3D graph on 2D, Z axis is P
colormap jet
shading interp
xlabel('x')
ylabel('y')
title('Basins of attraction for the Duffing map')     %title