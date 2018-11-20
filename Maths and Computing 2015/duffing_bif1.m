clear variables
set(0,'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14)

N = 1024;                                %Number of B Values
A = 2.5;
B_vec = linspace(0,0.3,N);          %array for B values between 0,0.3

Ntrans = 1024;                                % offset for remove transient dynmaics
NT = 256;                                   %                    
xstart = 0.75;                        %Arbritary start value
ystart = 0;

for k = 1:N
       
    y0 = ystart;
    x0 = xstart;
    B = B_vec(k);                 %loop to compute B values from xstart
    
    for j=1:Ntrans
        y_ = y0;
        y0 = -B*x0 + A*y_ - y_^3;              % loop to eliminate transient dynamics
        x0 = y_;
    end
    
    x(1,k) = x0;                            % define intial x value
    y(1,k) = y0;
    
    for q = 1:NT-1
        y(q+1,k) = -B*x(q,k) + A*y(q,k) - y(q,k)^3; %loop to give value of y
        x(q+1,k) = y(q,k);
    end
end

figure (3)                  % open a figure window
plot(B_vec,x,'k.','MarkerSize',1)                   % plot axes
xlabel('Control Parameter B')                 % label the x axis
ylabel('lim_{n\rightarrow\infty} x_n')                 % label the y axis 
title('Bifurcation diagram for the Duffing map')
