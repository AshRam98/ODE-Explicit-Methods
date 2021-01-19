# Scientific Computing Lab 1 Worksheet 2

Examining ordinary differential equation describing the dynamics of the
population of a certain species.

# How to Use

- Main Entry is the **main.mlx** file
- Add solution section **AFTER** the heading _Plot of Analytical Solution_
- Use header _Estimate #: 'Explicit Method Name'_
- Read below for **useful functions**

## Function Definitions

---

### [t, y] = runge(y_ode, t_end, y_init, dt)

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

- y(x + h) = y(x) + (1/6) x (F1 + 2xF2 + 2xF3 + F4)
  - F1 = h x f(x, y)
  - F2 = h x f(x + h/2, y + F1/2)
  - F3 = h x f(x + h/2, y + F2/2)
  - F4 = h x f(x + h,y + F3)

---

## Tasks

- [ ] Start assignment
