# Investigating ODEs with Multiple Approximation Methods

Examining Ordinary Differential Equation by describing the dynamics of the
population of a certain species.

Through the Matlab 'main.mlx' file, a clear indication of the exact solution and the approximation of different ODE with methods like Euler, Heunn, Runge-Kutta method are demonstrated. <br/>
Parameters like Timestep Size, Initial Condition or even different ODEs can be adjusted to look at the different plots produced, and how these affect the different approximation methods. The error for each method and respective time-steps are also calculated.


### Euler Method - [t, y] = euler(y_ode, t_end, y_init, dt)

- y(x + h) = y(x) + h*f(x,y)
  
- Accepts 4 input arguments

| Input | Description                                           |
| ----- | ----------------------------------------------------- |
| y_ode | first order differential equation for y               |
| t_end | scalar for the end time                               |
| y_int | scalar for the initial starting value of y, i.e. y(0) |
| dt    | step size from t_start to t_end                       |

- Output is an array representing the discrete time steps and the estimated solutions corresponding to the time steps

| Output | Choice                                     |
| ------ | ------------------------------------------ |
| t      | vector of the discrete time steps          |
| y      | vector with approximate y values at time t |

- Reference -> https://en.wikipedia.org/wiki/Euler_method

### Heun Method - [t, y] = heun(y_ode, t_start, t_end, p_init, dt(i))

- y(x + h) = y(x) + (h/2)*[f(x,y) + f(x,y')]
  - y'(x+h) = y(x) + h*f(x,y)

- Accepts 5 input arguments

|  Input  | Description                                           |
|  -----  | ----------------------------------------------------- |
|  y_ode  | first order differential equation for y               |
| t_start | scalar for the start time                             |
|  t_end  | scalar for the end time                               |
|  y_int  | scalar for the initial starting value of y, i.e. y(0) |
|    dt   | step size from t_start to t_end                       |

- Output is an array representing the discrete time steps and the estimated solutions corresponding to the time steps

| Output | Choice                                     |
| ------ | ------------------------------------------ |
| t      | vector of the discrete time steps          |
| y      | vector with approximate y values at time t |

- Reference -> https://en.wikipedia.org/wiki/Heun%27s_method

### Runge-Kutta Method - [t, y] = runge(y_ode, t_end, y_init, dt)

- y(x + h) = y(x) + (1/6)*(F1 + 2*F2 + 2*F3 + F4)
  - F1 = h*f(x, y)
  - F2 = h*f(x + h/2, y + F1/2)
  - F3 = h*f(x + h/2, y + F2/2)
  - F4 = h*f(x + h,y + F3)
  
- Accepts 4 input arguments

| Input | Description                                           |
| ----- | ----------------------------------------------------- |
| y_ode | first order differential equation for y               |
| t_end | scalar for the end time                               |
| y_int | scalar for the initial starting value of y, i.e. y(0) |
| dt    | step size from t_start to t_end                       |

- Output is an array representing the discrete time steps and the estimated solutions corresponding to the time steps

| Output | Choice                                     |
| ------ | ------------------------------------------ |
| t      | vector of the discrete time steps          |
| y      | vector with approximate y values at time t |

- The Runge Kutta Estimate:

  - Does not involve the _determination of the derivative_ at each new time step like Euler's method.
  - Instead, the approximation is based on evaluating the original function only.

- Reference -> https://en.wikipedia.org/wiki/Runge%E2%80%93Kutta_methods


