# Simulated annealing

A simulated annealing method for heuristic optimization, allowing to find the minimum of a multivariable function. Objective function must be provided.

##

Consider the objective function

$$
f(x) = 20 +[x_1^2 -10\cos(2\pi x_1)] +[x_2^2 -10\cos(2\pi x_2)]
$$

where the aim is to solve x for the minimum value of $f(x)$.

The solution obtained should converge to $x = [0;\ 0]$ where $f(x) = 0$, as can be seen marked in the figure.

<img width="1920" height="926" alt="optimization" src="https://github.com/user-attachments/assets/da399833-4494-4f78-ac8e-dda63bc84b71"/>

For the simulated annealing algorithm the following log was obtained:
```txt
k =  0: x = [5;5]      | F(x) = 50.0000 | T = 1.00
neighb: x = [3.8;4.1]  | F(x) = 36.2960 | new min
k =  1: x = [3.8;4.1]  | F(x) = 36.2960 | temp = 0.98
neighb: x = [2.9;3]    | F(x) = 20.6058 | new min
k =  2: x = [2.9;3]    | F(x) = 20.6058 | temp = 0.96
k =  3: x = [2.9;3]    | F(x) = 20.6058 | temp = 0.94
k =  4: x = [1.9;4]    | F(x) = 20.6058 | temp = 0.92
neighb: x = [0.77;3]   | F(x) = 18.1523 | new min
k =  5: x = [0.77;3]   | F(x) = 18.1523 | temp = 0.90
neighb: x = [0.02;2]   | F(x) = 4.4225 | new min
k =  6: x = [-1;2]     | F(x) = 4.4225 | temp = 0.89
k =  7: x = [-1;2]     | F(x) = 5.0207 | temp = 0.87
k =  8: x = [-1;2]     | F(x) = 5.0207 | temp = 0.85
neighb: x = [-0.98;0.93] | F(x) = 2.7839 | new min
k =  9: x = [-0.98;0.93] | F(x) = 2.7839 | temp = 0.83
k = 10: x = [-0.98;0.93] | F(x) = 2.7839 | temp = 0.82
k = 11: x = [-0.98;0.93] | F(x) = 2.7839 | temp = 0.80
k = 12: x = [-0.98;0.93] | F(x) = 2.7839 | temp = 0.78
k = 13: x = [-0.98;0.93] | F(x) = 2.7839 | temp = 0.77
neighb: x = [-1.1;-0.072] | F(x) = 2.6807 | new min
k = 14: x = [-1.1;-0.072] | F(x) = 2.6807 | temp = 0.75
k = 15: x = [-1.1;-0.072] | F(x) = 2.6807 | temp = 0.74
k = 16: x = [-1.1;-0.072] | F(x) = 2.6807 | temp = 0.72
k = 17: x = [-1.1;-0.072] | F(x) = 2.6807 | temp = 0.71
k = 18: x = [-1.1;-0.072] | F(x) = 2.6807 | temp = 0.70
neighb: x = [-0.088;-1] | F(x) = 2.6752 | new min
k = 19: x = [-0.088;-1] | F(x) = 2.6752 | temp = 0.68
k = 20: x = [-0.088;-1] | F(x) = 2.6752 | temp = 0.67
k = 21: x = [-0.088;-1] | F(x) = 2.6752 | temp = 0.65
k = 22: x = [-0.088;-1] | F(x) = 2.6752 | temp = 0.64
k = 23: x = [-0.038;-2] | F(x) = 2.6752 | temp = 0.63
neighb: x = [-1.1;-0.9] | F(x) = 4.5481 | new min
k = 24: x = [-1.1;-0.9] | F(x) = 4.5481 | temp = 0.62
k = 25: x = [-1.1;-0.9] | F(x) = 4.5481 | temp = 0.60
k = 26: x = [-1.1;-0.9] | F(x) = 4.5481 | temp = 0.59
neighb: x = [0.031;-0.01] | F(x) = 0.2111 | new min
k = 27: x = [0.031;-0.01] | F(x) = 0.2111 | temp = 0.58
k = 28: x = [0.031;-0.01] | F(x) = 0.2111 | temp = 0.57
k = 29: x = [0.031;-0.01] | F(x) = 0.2111 | temp = 0.56
k = 30: x = [0.031;-0.01] | F(x) = 0.2111 | temp = 0.55
k = 31: x = [0.031;-0.01] | F(x) = 0.2111 | temp = 0.53
k = 32: x = [0.031;-0.01] | F(x) = 0.2111 | temp = 0.52
k = 33: x = [0.031;-0.01] | F(x) = 0.2111 | temp = 0.51
neighb: x = [-0.023;-0.017] | F(x) = 0.1641 | new min
k = 34: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.50
k = 35: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.49
k = 36: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.48
k = 37: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.47
k = 38: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.46
k = 39: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.45
k = 40: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.45
k = 41: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.44
k = 42: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.43
k = 43: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.42
k = 44: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.41
k = 45: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.40
k = 46: x = [-0.023;-0.017] | F(x) = 0.1641 | temp = 0.39
k = 47: x = [0.023;-0.022] | F(x) = 0.1641 | temp = 0.39
k = 48: x = [0.023;-0.022] | F(x) = 0.1992 | temp = 0.38
k = 49: x = [0.023;-0.022] | F(x) = 0.1992 | temp = 0.37
k = 50: x = [0.023;-0.022] | F(x) = 0.1992 | temp = 0.36
```
