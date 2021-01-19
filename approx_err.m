%% Function to calculate approximation error
%  E = sqrt( (dt/t_end) * sum_k ((p_k - p_k_best)^2)

%% INPUTS
%  y_best is a function handle to compare with (E.g. exact solution)
%  t_k is a vector for discrete time nodes
%  y_k is a vector for approximations of y obtained from a numerical method
%  y_best2(optional) is a solution-vector to compare with (E.g. RK4 solution)
%      
%% OUTPUTS
%  E is the average error over all steps

%%
function E = approx_err(y_best, t_k, y_k, dt, y_best2)

    %initialization
    t_end = t_k(end);
    n_steps = length(t_k);
    E = 0;
    
    %Case 1: CALCULATE ERROR-SUM AGAINST A FUNCTION HANDLE
    if(nargin<5)          %[nargin is a matlab handle for no of arguments]
        
        for i = 1:n_steps
            % Values at t_k(i)
            p_k_exact = y_best(t_k(i));
            p_k = y_k(i);
            % Aggregating the errors
            E = E + (p_k - p_k_exact)^2;
        end
        
    %Case 2: CALCULATE ERROR-SUM AGAINST A VECTOR
    else
        for i = 1:n_steps
            p_k_best = y_best2(i);
            p_k = y_k(i);
            % Aggegating the Errors
            E = E + (p_k - p_k_best)^2;
        end
        
     
    end
    
    %Calculate the error acc to formula in WorkSheet
    E = sqrt((dt/t_end)*E);

        
   
