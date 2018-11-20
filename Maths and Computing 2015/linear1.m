clear variables
clc                         
m = 2;                      %Gradient
c = 3;                      %y-intercept
x = linspace(-3,3,1024);    %Independant Variable
y = m*x + c;                %Dependant variable

figure (1)                  %Open a figure window
plot(x,y)                   %Plot (x,y) pair
grid on                     %Turn on the grid
xlabel('x')                 % Label the x axis
ylabel('y')                 % Label the y axis