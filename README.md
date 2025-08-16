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
neighb: x = [4.9;3.9]  | F(x) = 43.320 | new min
k =  2: x = [4.9;3.9]  | F(x) = 43.3202 | T = 0.98
neighb: x = [3.9;4.1]  | F(x) = 35.639 | new min
k =  3: x = [3.9;4.1]  | F(x) = 35.6388 | T = 0.96
neighb: x = [2.8;3.8]  | prob. = 0.50 |
neighb: x = [4.1;1.9]  | F(x) = 26.495 | new min
k =  4: x = [4.1;1.9]  | F(x) = 26.4946 | T = 0.94
k =  5: x = [4.1;1.9]  | F(x) = 26.4946 | T = 0.92
neighb: x = [2.8;2.9]  | F(x) = 25.858 | new min
k =  6: x = [2.8;2.9]  | F(x) = 25.8580 | T = 0.90
neighb: x = [2;3.1]    | F(x) = 17.934 | new min
neighb: x = [1.9;2.1]  | F(x) = 9.427 | new min
k =  7: x = [1.9;2.1]  | F(x) = 9.4269 | T = 0.89
k =  8: x = [1.9;2.1]  | F(x) = 9.4269 | T = 0.87
k =  9: x = [1.9;2.1]  | F(x) = 9.4269 | T = 0.85
neighb: x = [2.1;1.1]  | F(x) = 8.584 | new min
neighb: x = [2.1;0.96] | F(x) = 7.882 | new min
neighb: x = [2;1.9]    | prob. = 0.49 |
k = 10: x = [2;1.9]    | F(x) = 8.4861 | T = 0.83
k = 11: x = [2;1.9]    | F(x) = 8.4861 | T = 0.82
k = 12: x = [2;1.9]    | F(x) = 8.4861 | T = 0.80
k = 13: x = [2;1.9]    | F(x) = 8.4861 | T = 0.78
k = 14: x = [2;1.9]    | F(x) = 8.4861 | T = 0.77
k = 15: x = [2;1.9]    | F(x) = 8.4861 | T = 0.75
neighb: x = [0.89;0.96] | F(x) = 4.333 | new min
k = 16: x = [0.89;0.96] | F(x) = 4.3334 | T = 0.74
k = 17: x = [0.89;0.96] | F(x) = 4.3334 | T = 0.72
neighb: x = [0.11;0.031] | F(x) = 2.679 | new min
k = 18: x = [0.11;0.031] | F(x) = 2.6787 | T = 0.71
neighb: x = [-0.99;-0.99] | F(x) = 2.014 | new min
k = 19: x = [-0.99;-0.99] | F(x) = 2.0145 | T = 0.70
neighb: x = [0.06;-0.00095] | F(x) = 0.718 | new min
k = 20: x = [0.06;-0.00095] | F(x) = 0.7175 | T = 0.68
k = 21: x = [0.06;-0.00095] | F(x) = 0.7175 | T = 0.67
k = 22: x = [0.06;-0.00095] | F(x) = 0.7175 | T = 0.65
k = 23: x = [0.06;-0.00095] | F(x) = 0.7175 | T = 0.64
k = 24: x = [0.06;-0.00095] | F(x) = 0.7175 | T = 0.63
k = 25: x = [0.06;-0.00095] | F(x) = 0.7175 | T = 0.62
k = 26: x = [0.06;-0.00095] | F(x) = 0.7175 | T = 0.60
k = 27: x = [0.06;-0.00095] | F(x) = 0.7175 | T = 0.59
k = 28: x = [0.06;-0.00095] | F(x) = 0.7175 | T = 0.58
k = 29: x = [0.06;-0.00095] | F(x) = 0.7175 | T = 0.57
k = 30: x = [0.06;-0.00095] | F(x) = 0.7175 | T = 0.56
```
