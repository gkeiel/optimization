function [ x, f ] = gradient_descent( F, Gr, x, k_max )
% gradient descent algorithm

%%%%%%%%%%%%%%%%%%%%%%%%%% initialize parameters %%%%%%%%%%%%%%%%%%%%%%%%%%
% tolerance, size step
k     = 1;
ep    = 1e-3;
alpha = 2e-1;

%%%%%%%%%%%%%%%%%%%%%%%%%%% gradient descent %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f(k) = F(x);          % evaluate objective for x_0
fprintf('gradient descent optimization\n');
fprintf('k = %2d: x = %-10s | F(x) = %.4f\n', k, mat2str(x,2), f(k));

while( k<k_max && abs( max(Gr(x)) )>ep ) % maximum iterations or optimality stop criterion
    k = k+1;
    d = -Gr(x);        % descent direction
    x = x +alpha*d;    % gradient descent 

    f(k) = F(x);       % evaluate objective function
    fprintf('k = %2d: x = %-10s | F(x) = %.4f\n', k, mat2str(x,2), f(k));    % show progress
end
end