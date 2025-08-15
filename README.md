# Optimization techniques

A repository of algorithms for mathematical and heuristic optimization of an objective function. Each algorithm has its own folder, containing the code for the function and a standalone example.

Main file named as 'optimization_main.m', which allows to call any of the following techniques to solve an optimization problem:
- [gradient descent](./gradient_descent)
- [hill climbing](./hill_climbing)
- [simulated annealing](./simulated_annealing)

##

Consider the objective function

$$
f(x) = 20 +[x_1^2 -10\cos(2\pi x_1)] +[x_2^2 -10\cos(2\pi x_2)]
$$

where the aim is to solve x for the minimum value of $$f(x)$$.

For any of the techniques used the solution obtained should converge to $x = [0;\\ 0]$ where $f(x) = 0$, as can be seen marked in the figure.

<img width="1920" height="926" alt="optimization" src="https://github.com/user-attachments/assets/a192241e-70ca-4f1d-b5b5-0e40cbf76ebd" />

For the simulated annealing algorithm the following log was obtained:
```txt
k =  1: x = [5;5]      | F(x) = 50.0000 | T = 1.00
neighb: x = [3.5;4]    | F(x) = 47.815 | new min
neighb: x = [2.6;2.3]  | F(x) = 41.764 | new min
neighb: x = [4.3;0.89] | F(x) = 35.626 | new min
neighb: x = [5;1]      | F(x) = 26.735 | new min
k =  2: x = [5;1]      | F(x) = 26.7349 | T = 0.98
neighb: x = [5;1]      | F(x) = 26.398 | new min
k =  3: x = [5;1]      | F(x) = 26.3980 | T = 0.96
neighb: x = [3.9;-0.79] | F(x) = 26.021 | new min
k =  4: x = [3.9;-0.79] | F(x) = 26.0214 | T = 0.94
k =  5: x = [3.9;-0.79] | F(x) = 26.0214 | T = 0.92
neighb: x = [2.1;-1.7] | F(x) = 24.022 | new min
neighb: x = [1.2;-1.1] | F(x) = 12.207 | new min
k =  6: x = [1.2;-1.1] | F(x) = 12.2074 | T = 0.90
neighb: x = [0.16;0.036] | F(x) = 4.801 | new min
k =  7: x = [0.16;0.036] | F(x) = 4.8015 | T = 0.89
neighb: x = [0.11;-1]  | F(x) = 3.501 | new min
k =  8: x = [0.11;-1]  | F(x) = 3.5011 | T = 0.87
neighb: x = [1;-0.94]  | F(x) = 3.129 | new min
k =  9: x = [1;-0.94]  | F(x) = 3.1285 | T = 0.85
k = 10: x = [1;-0.94]  | F(x) = 3.1285 | T = 0.83
k = 11: x = [1;-0.94]  | F(x) = 3.1285 | T = 0.82
neighb: x = [-0.13;-0.11] | prob. = 0.05 |
k = 12: x = [-0.13;-0.11] | F(x) = 5.5838 | T = 0.80
k = 13: x = [-0.13;-0.11] | F(x) = 5.5838 | T = 0.78
k = 14: x = [-0.13;-0.11] | F(x) = 5.5838 | T = 0.77
k = 15: x = [-0.13;-0.11] | F(x) = 5.5838 | T = 0.75
neighb: x = [1;0.97]   | F(x) = 2.547 | new min
k = 16: x = [1;0.97]   | F(x) = 2.5473 | T = 0.74
k = 17: x = [1;0.97]   | F(x) = 2.5473 | T = 0.72
k = 18: x = [1;0.97]   | F(x) = 2.5473 | T = 0.71
k = 19: x = [1;0.97]   | F(x) = 2.5473 | T = 0.70
k = 20: x = [1;0.97]   | F(x) = 2.5473 | T = 0.68
k = 21: x = [1;0.97]   | F(x) = 2.5473 | T = 0.67
k = 22: x = [1;0.97]   | F(x) = 2.5473 | T = 0.65
k = 23: x = [1;0.97]   | F(x) = 2.5473 | T = 0.64
k = 24: x = [1;0.97]   | F(x) = 2.5473 | T = 0.63
k = 25: x = [1;0.97]   | F(x) = 2.5473 | T = 0.62
k = 26: x = [1;0.97]   | F(x) = 2.5473 | T = 0.60
neighb: x = [-0.034;0.89] | prob. = 0.32 |
k = 27: x = [-0.034;0.89] | F(x) = 3.2306 | T = 0.59
k = 28: x = [-0.034;0.89] | F(x) = 3.2306 | T = 0.58
neighb: x = [-0.016;0.94] | F(x) = 1.577 | new min
k = 29: x = [-0.016;0.94] | F(x) = 1.5774 | T = 0.57
k = 30: x = [-0.016;0.94] | F(x) = 1.5774 | T = 0.56
neighb: x = [-0.071;1] | prob. = 0.47 |
k = 31: x = [-0.071;1] | F(x) = 1.9972 | T = 0.55
k = 32: x = [-0.071;1] | F(x) = 1.9972 | T = 0.53
k = 33: x = [-0.071;1] | F(x) = 1.9972 | T = 0.52
k = 34: x = [-0.071;1] | F(x) = 1.9972 | T = 0.51
k = 35: x = [-0.071;1] | F(x) = 1.9972 | T = 0.50
k = 36: x = [-0.071;1] | F(x) = 1.9972 | T = 0.49
k = 37: x = [-0.071;1] | F(x) = 1.9972 | T = 0.48
k = 38: x = [-0.071;1] | F(x) = 1.9972 | T = 0.47
k = 39: x = [-0.071;1] | F(x) = 1.9972 | T = 0.46
k = 40: x = [-0.071;1] | F(x) = 1.9972 | T = 0.45
k = 41: x = [-0.071;1] | F(x) = 1.9972 | T = 0.45
k = 42: x = [-0.071;1] | F(x) = 1.9972 | T = 0.44
k = 43: x = [-0.071;1] | F(x) = 1.9972 | T = 0.43
neighb: x = [0.0033;0.99] | F(x) = 1.008 | new min
k = 44: x = [0.0033;0.99] | F(x) = 1.0082 | T = 0.42
k = 45: x = [0.0033;0.99] | F(x) = 1.0082 | T = 0.41
k = 46: x = [0.0033;0.99] | F(x) = 1.0082 | T = 0.40
k = 47: x = [0.0033;0.99] | F(x) = 1.0082 | T = 0.39
k = 48: x = [0.0033;0.99] | F(x) = 1.0082 | T = 0.39
k = 49: x = [0.0033;0.99] | F(x) = 1.0082 | T = 0.38
k = 50: x = [0.0033;0.99] | F(x) = 1.0082 | T = 0.37
```
