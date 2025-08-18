# Hill climbing

A hill climbing method for heuristic optimization, allowing to find the minimum of a multivariable function. Objective function must be provided.

##

Consider the objective function

$$
f(x) = 20 +[x_1^2 -10\cos(2\pi x_1)] +[x_2^2 -10\cos(2\pi x_2)]
$$

where the aim is to solve x for the minimum value of $f(x)$.

The solution obtained should converge to $x = [0;\ 0]$ where $f(x) = 0$, as can be seen marked in the figure.

<img width="1920" height="926" alt="optimization" src="https://github.com/user-attachments/assets/da399833-4494-4f78-ac8e-dda63bc84b71"/>

For the hill climbing algorithm the following log was obtained:
```txt
hill climbing optimization
k =  0: x = [5;5]      | F(x) = 50.0000
k =  1: x = [5;5]      | F(x) = 50.0000
k =  2: x = [5;5]      | F(x) = 50.0000
k =  3: x = [5;5]      | F(x) = 50.0000
k =  4: x = [5;5]      | F(x) = 50.0000
neighb: x = [4.2;4.1]  | F(x) = 45.1791 | new min
neighb: x = [4.1;5]    | F(x) = 45.1596 | new min
neighb: x = [5.1;4]    | F(x) = 42.0564 | new min
k =  5: x = [5.1;4]    | F(x) = 42.0564
k =  6: x = [5.1;4]    | F(x) = 42.0564
neighb: x = [4.1;3.9]  | F(x) = 35.7551 | new min
neighb: x = [3.1;3.1]  | F(x) = 22.7636 | new min
k =  7: x = [3.1;3.1]  | F(x) = 22.7636
neighb: x = [3;3]      | F(x) = 18.0083 | new min
neighb: x = [2;2.9]    | F(x) = 13.6459 | new min
k =  8: x = [2;2.9]    | F(x) = 13.6459
neighb: x = [2;2.1]    | F(x) = 9.7430 | new min
k =  9: x = [2;2.1]    | F(x) = 9.7430
k = 10: x = [2;2.1]    | F(x) = 9.7430
k = 11: x = [2;2.1]    | F(x) = 9.7430
k = 12: x = [2;2.1]    | F(x) = 9.7430
k = 13: x = [2;2.1]    | F(x) = 9.7430
k = 14: x = [2;2.1]    | F(x) = 9.7430
k = 15: x = [2;2.1]    | F(x) = 9.7430
k = 16: x = [2;2.1]    | F(x) = 9.7430
k = 17: x = [2;2.1]    | F(x) = 9.7430
k = 18: x = [2;2.1]    | F(x) = 9.7430
k = 19: x = [2;2.1]    | F(x) = 9.7430
neighb: x = [1;1.9]    | F(x) = 6.6195 | new min
k = 20: x = [1;1.9]    | F(x) = 6.6195
k = 21: x = [1;1.9]    | F(x) = 6.6195
k = 22: x = [1;1.9]    | F(x) = 6.6195
neighb: x = [1.1;1]    | F(x) = 4.4283 | new min
k = 23: x = [1.1;1]    | F(x) = 4.4283
k = 24: x = [1.1;1]    | F(x) = 4.4283
k = 25: x = [1.1;1]    | F(x) = 4.4283
k = 26: x = [1.1;1]    | F(x) = 4.4283
neighb: x = [0.12;0.96] | F(x) = 4.2036 | new min
k = 27: x = [0.12;0.96] | F(x) = 4.2036
k = 28: x = [0.12;0.96] | F(x) = 4.2036
k = 29: x = [0.12;0.96] | F(x) = 4.2036
k = 30: x = [0.12;0.96] | F(x) = 4.2036
k = 31: x = [0.12;0.96] | F(x) = 4.2036
neighb: x = [0.12;-0.031] | F(x) = 3.1149 | new min
k = 32: x = [0.12;-0.031] | F(x) = 3.1149
k = 33: x = [0.12;-0.031] | F(x) = 3.1149
k = 34: x = [0.12;-0.031] | F(x) = 3.1149
k = 35: x = [0.12;-0.031] | F(x) = 3.1149
k = 36: x = [0.12;-0.031] | F(x) = 3.1149
k = 37: x = [0.12;-0.031] | F(x) = 3.1149
neighb: x = [0.048;0.053] | F(x) = 0.9994 | new min
k = 38: x = [0.048;0.053] | F(x) = 0.9994
k = 39: x = [0.048;0.053] | F(x) = 0.9994
k = 40: x = [0.048;0.053] | F(x) = 0.9994
k = 41: x = [0.048;0.053] | F(x) = 0.9994
k = 42: x = [0.048;0.053] | F(x) = 0.9994
k = 43: x = [0.048;0.053] | F(x) = 0.9994
k = 44: x = [0.048;0.053] | F(x) = 0.9994
k = 45: x = [0.048;0.053] | F(x) = 0.9994
neighb: x = [0.032;0.021] | F(x) = 0.2896 | new min
k = 46: x = [0.032;0.021] | F(x) = 0.2896
neighb: x = [0.035;0.013] | F(x) = 0.2798 | new min
k = 47: x = [0.035;0.013] | F(x) = 0.2798
k = 48: x = [0.035;0.013] | F(x) = 0.2798
k = 49: x = [0.035;0.013] | F(x) = 0.2798
k = 50: x = [0.035;0.013] | F(x) = 0.2798
```