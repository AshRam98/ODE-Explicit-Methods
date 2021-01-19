% Euler Method for Numerical Approximation of ODEs
% y(x+h) = y(x) + h* f(x,y)

% h -> Step Size
% f(x,y) -> the derivative of the required function

function [t, y] = euler(y_ode, t_end, y_init, dt)
t = [0:dt:t_end];
n_steps = length(t)-1;

y = zeros(size(t));
y(1) = y_init;

for i = 1:n_steps
    t_temp = t(i);
    y_temp = y(i);
    
    y(i+1) = y(i) + dt*(y_ode(t_temp, y_temp));
    
end