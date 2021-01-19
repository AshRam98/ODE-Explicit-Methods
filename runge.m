% Runge-Kutta Method Order 4
% y(x + h) =  y(x) + (1/6)*(F1 + 2*F2 + 2*F3 + F4)
% F1 = h * f(x, y)
% F2 = h * f(x + h/2, y + F1/2)
% F3 = h * f(x + h/2, y + F2/2)
% F4 = h * f(x + h,y + F3)

function [t, y] = runge(ode, t_start, t_end, y_init, dt)
    %% INPUTS
    % ode is the first order differential equation to be estimated
    % t_start is an integer for the start time
    % t_end is an integer for the end time
    % y_init is the initial starting condition at start
    % dt is the step size from t_start to t_end
    %
    %% OUTPUTS
    % t is a row vector of discrete time steps from t_start to t_end
    % y is a row vector with approximate population sizes at a time t
    
    %%
    n_steps = (t_end - t_start) / dt;
    t = linspace(t_start, t_end, n_steps+1);
   
    y = zeros(size(t));
    y(1) = y_init;

    for i = 1:n_steps
        % Starting time at step i
        t_temp = t(i);
        y_temp = y(i);

        % RK Coefficients
        F1 = dt * ode(t_temp, y_temp);
        F2 = dt * ode(t_temp + 0.5*dt, y_temp + 0.5*F1);
        F3 = dt * ode(t_temp + 0.5*dt, y_temp + 0.5*F2);
        F4 = dt * ode(t_temp + dt, y_temp + F3);

        % Approximate y value at time t = t_start_for_step + dt
        y(i+1) = y(i) + (1/6)*(F1 + 2*F2 + 2*F3 + F4);
    end
