% Ordinary differential equation describing the dynamics of the
% population of a certain species:

function dy = ode(x, y)
    dy = (1 - y/10)*y;
end

%% Preliminary Observations:
% 1. Rate of population growth 'dy' is 
%    a quadratic funcn of the population 'y'
% 2. Critical points: y = 0,10
% 3. y = 10 is a stable equilibrium point.
% 4. Double derivative of y is -ve at y=10.
%     This verfies that y=10 is a stable eq. point.