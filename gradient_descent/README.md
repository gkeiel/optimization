# Gradient descent

A simple gradient descent method for unconstrained mathematical optimization, allowing to find the minimum of a differentiable multivariable function. Objective function and analytical gradient must be provided. Since no unidimensional search is performed, a constant size step is considered.

##

Consider the objective function

$$
f(x) = x_1^2 +2x_2^2 +x_1x_2 -6x_1 -10x_2
$$

with gradient

$$
\nabla f(x) = [2x_1+x_2-6;\\ 4x_2+x_1-10]'
$$

where the aim is to solve x for the minimum value of $$f(x)$$.

The solution obtained should converge to $x = [2;\\ 2]$ where $f(x) = -16$, as can be seen marked in the figure.

<img width="1920" height="926" alt="gradient_descent" src="https://github.com/user-attachments/assets/37e68fbb-4759-44c5-99d4-3d2620a63fae"/>

For the the gradient descent algorithm the following log was obtained:
```txt
gradient descent optimization
k =  0: x = [5;5]      | F(x) = 20.0000
k =  1: x = [4.1;3.5]  | F(x) = -3.9400
k =  2: x = [3.5;2.7]  | F(x) = -11.6512
k =  3: x = [3.2;2.3]  | F(x) = -14.2283
k =  4: x = [2.9;2]    | F(x) = -15.1535
k =  5: x = [2.7;1.9]  | F(x) = -15.5279
k =  6: x = [2.6;1.9]  | F(x) = -15.7055
k =  7: x = [2.5;1.9]  | F(x) = -15.8039
k =  8: x = [2.4;1.9]  | F(x) = -15.8650
k =  9: x = [2.3;1.9]  | F(x) = -15.9056
k = 10: x = [2.3;1.9]  | F(x) = -15.9336
k = 11: x = [2.2;1.9]  | F(x) = -15.9531
k = 12: x = [2.2;1.9]  | F(x) = -15.9668
k = 13: x = [2.2;1.9]  | F(x) = -15.9765
k = 14: x = [2.1;1.9]  | F(x) = -15.9834
k = 15: x = [2.1;2]    | F(x) = -15.9882
k = 16: x = [2.1;2]    | F(x) = -15.9917
k = 17: x = [2.1;2]    | F(x) = -15.9941
k = 18: x = [2.1;2]    | F(x) = -15.9958
k = 19: x = [2.1;2]    | F(x) = -15.9970
k = 20: x = [2;2]      | F(x) = -15.9979
k = 21: x = [2;2]      | F(x) = -15.9985
k = 22: x = [2;2]      | F(x) = -15.9990
k = 23: x = [2;2]      | F(x) = -15.9993
k = 24: x = [2;2]      | F(x) = -15.9995
k = 25: x = [2;2]      | F(x) = -15.9996
k = 26: x = [2;2]      | F(x) = -15.9997
k = 27: x = [2;2]      | F(x) = -15.9998
k = 28: x = [2;2]      | F(x) = -15.9999
k = 29: x = [2;2]      | F(x) = -15.9999
k = 30: x = [2;2]      | F(x) = -15.9999
k = 31: x = [2;2]      | F(x) = -16.0000
k = 32: x = [2;2]      | F(x) = -16.0000
k = 33: x = [2;2]      | F(x) = -16.0000
k = 34: x = [2;2]      | F(x) = -16.0000
k = 35: x = [2;2]      | F(x) = -16.0000
k = 36: x = [2;2]      | F(x) = -16.0000
k = 37: x = [2;2]      | F(x) = -16.0000
k = 38: x = [2;2]      | F(x) = -16.0000
k = 39: x = [2;2]      | F(x) = -16.0000
k = 40: x = [2;2]      | F(x) = -16.0000
k = 41: x = [2;2]      | F(x) = -16.0000
k = 42: x = [2;2]      | F(x) = -16.0000
k = 43: x = [2;2]      | F(x) = -16.0000
k = 44: x = [2;2]      | F(x) = -16.0000
k = 45: x = [2;2]      | F(x) = -16.0000
k = 46: x = [2;2]      | F(x) = -16.0000
k = 47: x = [2;2]      | F(x) = -16.0000
```
