% Analytical Solution for ODE Under Investigation
function y = exact_soln(x)
    y = 10 / (1 + 9*exp(-1*x));
end