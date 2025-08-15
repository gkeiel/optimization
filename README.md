# Optimization techniques

A repository of algorithms for mathematical and heuristic optimization of an objective function. Each algorithm has its own folder, containing the code for the function and a standalone example.

Main file named as 'optimization_main.m', which allows to call any of the following techniques to solve an optimization problem:
- [gradient descent](./gradient_descent)
- [hill climbing](./hill_climbing)
- [simulated annealing](./simulated_annealing)

##

Consider the following objective function:

$$
f(x) = x_1^2 +2x_2^2 +x_1x_2 -6x_1 -10x_2
$$

where the aim is to solve x for the minimum value of $$f(x)$$.

For any of the techniques used, a solution is obtained that converges to $x = [2;\\ 2]$ where $f(x) = -16$, as can be seen marked in the figure.

<img width="1920" height="926" alt="optimization" src="https://github.com/user-attachments/assets/0a80ce0d-b319-407b-8204-10af9cb875c8" />
