%% METHOD OF HEUN
% Each iteration has four evaluations
% 1) Slope at current time step:               dy(t) = f(t, y)
% 2) Prediction for y at next time step:       y0(t+h)= y(t)+h*dy(t)
% 3) Prediction for slope at next time step:   dy(t+h) = f(t+h, y0(t+h))
% 4) y at next time step:               y(t+h) = y(t)+h*0.5*(dy(t)+dy(t+h)

% It's predictor-corrector approach where we first predict a value
% for y_next at step 2, then we correct our prediction at step 4

%% ABOUT THE FUNCTION
    % INPUTS
    % ode:      <a function handle> first order ODE representing dy
    % t_start:  <scalar> start time (usually 0)
    % t_end:    <scalar> end time
    % y_init:   <scalar> initial value of y
    % h:        <scalar>step size from t_start to t_end

    % OUTPUTS
    % t: <row vector> of discrete time steps from t_start to t_end
    % y: <row vector> of solution approximation corresponding to time t
    
    %%
    
function [t,y] = heun(ode, t_start, t_end, y_init, h)
      
    %no of time steps after t_start
    n_steps = (t_end-t_start)/h;
    
    %initialize t and y vectors
    t = linspace(t_start, t_end, n_steps+1);
    y = zeros(size(t));
    y(1) = y_init; %initial value
    
    %Explicit Heun Method for n_steps
    for i = 1:n_steps
        dy = ode(t(i),y(i));
        y0_next = y(i)+h*dy;
        dy_next = ode(t(i)+h, y0_next);
        y(i+1) = y(i) + h*0.5*(dy + dy_next);
    end
    