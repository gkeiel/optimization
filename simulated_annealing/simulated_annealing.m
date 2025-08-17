function [ x, f ] = simulated_annealing( F, x, k_max, varargin )
% simulated_annealing performs simulated annealing optimization
%
%   [x, f] = simulated_annealing(F, x_0, k_max, alpha, tol, verbose)
%
% inputs:
%   F      - function handle for objective function
%   x_0    - initial guess (column vector)
%   k_max  - maximum iterations
%
% name-value pairs (optional)
%   'alpha'   - maximum step size, default = 1
%   'neig'    - number of neighbors, default = 10
%   'beta'    - cooling rate, default = 0.98
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
beta    = 0.98;
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
        case 'beta'
            beta = value;
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
k = 1;
T = 1;       % initial temperature                   


%%%%%%%%%%%%%%%%%%%%%%%%%%% simulated annealing %%%%%%%%%%%%%%%%%%%%%%%%%%%
f(1) = F(x);                             % evaluate objective function for x_0
if verbose
    fprintf('simulated annealing optimization\n');
    fprintf('k = %2d: x = %-10s | F(x) = %.4f | temp = %.2f\n', 0, mat2str(x,2), f(1), T)
end

while( k<=k_max )
    k   = k+1;
    f_i = F(x);         % evaluate objective function for x_i
    
    for aux  = 1:neig
        x_j  = x +alpha*(2*rand(size(x)) -1);   % random neighbor solution x_j
        f_j = F(x_j);                           % evaluate objective function for x_j
        
        % if objective function lower else go thorught probab. acceptance
        if( f_j < f_i )
            x   = x_j;                          % accepted new solution
            f_i = f_j;                          % objective function new value
            fprintf('neighb: x = %-10s | F(x) = %.4f | new min\n', mat2str(x,2), f_j);
        else
            pb  = exp( (f_i-f_j)/T );           % probability threshold        
            if( rand(1,1) < pb )
                x = x_j;                        % accepted solution (not necessarily better)
            end
        end
    end

    f(k)  = f_i;
    T     = beta*T;      % update temperature
    alpha = alpha*beta;  % update step size
    if verbose
        fprintf('k = %2d: x = %-10s | F(x) = %.4f | temp = %.2f\n', k-1, mat2str(x,2), f(k), T);  % show progress
    end
    if( abs(f(k)-f(k-1)) < tol && T < 2e-1 )
       if verbose
           fprintf('Converged: change < tol (%.e)\n', tol);
       end
       break;
    end
end
end