clear variables
set(0,'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14)

Nr = 1024;
B_vec = linspace(2,0,Nr);
A_vec = linspace(2,0,Nr);

Ntrans = 64;
NT = 256;
xstart = 0.5;
ystart = 0;


for k = 1:Nr
   
    x0 = xstart;
    y0 = ystart; 
    B = B_vec(k);
    A = A_vec (k);
    for j = Ntrans
       
    x(1,k) = x0;
    y(1,k) = y0;
    end
    for q = 1:NT-1
        x(q+1,k)= y(q,k);
        y(q+1,k)= -B*x(q,k) + A*y(q,k) - y(q,k)^3;
        
    end

 end
figure(3)
plot(B_vec,x,'k.','MarkerSize',1)
xlabel('Control parameter r')
ylabel('lim_{n\rightarrow\infty} x_n')
title ('Bifurcation Diagram of the Ricker Map')