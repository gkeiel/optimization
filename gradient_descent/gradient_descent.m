function [ x, f ] = gradient_descent( F, Gr, x, k_max, varargin )
% gradient_descent performs gradient descent optimization
%
%   [x, f] = gradient_descent(F, Gr, x_0, k_max, alpha, tol, verbose)
%
% inputs:
%   F      - function handle for objective function
%   Gr     - function handle for gradient
%   x_0    - initial guess (column vector)
%   k_max  - maximum iterations
%
% name-value pairs (optional)
%   'alpha'   - step size, default = 1e-1
%   'tol'     - tolerance, default = 1e-6
%   'verbose' - show progress, default = true
%
% outputs:
%   x - solution vector
%   f - history of objective function values
%   k - number of iterations


%%%%%%%%%%%%%%%%%%%%%%%%%% initialize parameters %%%%%%%%%%%%%%%%%%%%%%%%%%
% default parameters
alpha   = 1e-1;
tol     = 1e-6;
verbose = true;
% parse name-value pairs
for i = 1:2:length(varargin)
    name  = lower(varargin{i});
    value = varargin{i+1};
    switch name
        case 'alpha'
            alpha = value;
        case 'tol'
            tol = value;
        case 'verbose'
            verbose = value;
        otherwise
            error('Unknown parameter name: %s', varargin{i});
    end
end

% initialize
k = 1;


%%%%%%%%%%%%%%%%%%%%%%%%%%% gradient descent %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f(1) = F(x);    % evaluate objective function for x_0
grad = Gr(x);   % evaluate gradient for x_0
if verbose
    fprintf('gradient descent optimization\n');
    fprintf('k = %2d: x = %-10s | F(x) = %.4f\n', 0, mat2str(x,2), f(1));
end

while( k<=k_max && norm(grad)>tol ) % stopping criterion (number of iterations or optimality) 
    k    = k+1;
    grad = Gr(x);         % gradient
    x    = x -alpha*grad; % move in descent direction 

    f(k) = F(x);          % evaluate objective function
    if verbose
        fprintf('k = %2d: x = %-10s | F(x) = %.4f\n', k-1, mat2str(x,2), f(k));  % show progress
    end
end
end