function [ x, f ] = hill_climbing( F, x, k_max, varargin )
% hill_climbing performs hill climbing optimization
%
%   [x, f] = hill_climbing(F, x_0, k_max, 'alpha', 1, 'neig', 10, 'tol', 1e-6, 'verbose', true)
%
% inputs:
%   F      - function handle for objective function
%   x_0    - initial guess (column vector)
%   k_max  - maximum iterations
%
% name-value pairs (optional)
%   'alpha'   - maximum step size, default = 1
%   'neig'    - number of neighbors, default = 10
%   'tol'     - tolerance, default = 1e-6
%   'verbose' - show progress, default = true
%
% outputs:
%   x - solution vector
%   f - history of objective function values
%   k - number of iterations


%%%%%%%%%%%%%%%%%%%%%%%%%% initialize parameters %%%%%%%%%%%%%%%%%%%%%%%%%%
% default parameters
alpha   = 2;
neig    = 10;
tol     = 1e-6;
verbose = true;
% parse name-value pairs
for i = 1:2:length(varargin)
    name  = lower(varargin{i});
    value = varargin{i+1};
    switch name
        case 'alpha'
            alpha = value;
        case 'neig'
            neig = value;
        case 'tol'
            tol = value;
        case 'verbose'
            verbose = value;
        otherwise
            error('Unknown parameter name: %s', varargin{i});
    end
end

% initialize
k    = 1;


%%%%%%%%%%%%%%%%%%%%%%%%%%% hill climbing %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f(1) = F(x);                                    % evaluate objective function for x_0
if verbose
    fprintf('hill climbing optimization\n');
    fprintf('k = %2d: x = %-10s | F(x) = %.4f\n', 0, mat2str(x,2), f(1));
end

while( k<=k_max )                               % stopping criterion (number of iterations) 
    k   = k+1;
    f_i = F(x);                                 % evaluate objective function for x_i
    
    for aux  = 1:neig
        x_j = x +alpha*(2*rand(size(x)) -1);    % random neighbor solution x_j     
        f_j = F(x_j);                           % evaluate objective function for x_j

        if( f_j < f_i )
            x   = x_j;                          % accepted new solution
            f_i = f_j;                          % objective function new value
            fprintf('neighb: x = %-10s | F(x) = %.4f | new min\n', mat2str(x,2), f_j);
        end
    end

    f(k) = f_i;                                  
    if verbose
        fprintf('k = %2d: x = %-10s | F(x) = %.4f\n', k-1, mat2str(x,2), f(k));  % show progress
    end
    
%     if( abs(f(k)-f(k-1)) < tol )
%         if verbose
%             fprintf('Converged: change < tol (%.e)\n', tol);
%         end
%         break;
%     end  
end
end