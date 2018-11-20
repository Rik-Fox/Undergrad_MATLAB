clear variables
set(0,'DefaultAxesFontName','Times New Roman','DefaultAxesFontSize',14)

Nr = 1024;
r_vec = linspace(2.5,4,Nr);

Ntrans = 64;
NT = 256;
xstart = sqrt(2)/10;


for k = 1:Nr
    
    x0 = xstart;
    r = r_vec(k);
    
    for j = 1:Ntrans
        x0 = r*x0*(1-x0);
    end
    
    x(1,k) = x0;
    
    for q = 1:NT-1
        x(q+1,k) = r*x(q,k)*(1-x(q,k));
    end
end

figure(1)
plot(r_vec,x,'k.','MarkerSize',1)
xlabel('Control parameter r')
ylabel('lim_{n\rightarrow\infty} x_n')
title ('Bifurcation Diagram of the Logistics Map')

