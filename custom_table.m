% Table Representation
function T = custom_table(dt, error_est, red_fact,error2)
    %% INPUTS
    % dt is the time step size used in the analysis
    % error_est is the error between analytical and explicit method
    % red_fact is the factor of reduction on the error using half the original time step
    %
    %% OUTPUTS
    % T is a Matlab Table
    % Variable names passed to 'table()' become the column headers
    
    %%
    Time_Step = dt;
    Error = error_est;
    Red_factor = red_fact;
    Error2 = error2;

    T = table(Time_Step, Error, Red_factor, Error2);