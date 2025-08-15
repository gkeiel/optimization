function [ x, f ] = simulated_annealing( F, x, k_max )
% simulated annealing algorithm

%%%%%%%%%%%%%%%%%%%%%%%%%% initialize parameters %%%%%%%%%%%%%%%%%%%%%%%%%%
k    = 1;   
n    = 10;      % number of neighbors
beta = 0.98;    % temperature cooling rate
T    = 1;       % initial temperature                   
step = 2;       % initial step size

%%%%%%%%%%%%%%%%%%%%%%%%%%% simulated annealing %%%%%%%%%%%%%%%%%%%%%%%%%%%
f(k) = F(x);                             % evaluate objective function for x_0
fprintf('simulated annealing optimization\n');
fprintf('k = %2d: x = %-10s | F(x) = %.4f | T = %.2f\n', k, mat2str(x,2), f(k), T)

while( k<k_max && T>1e-6 )
    k = k+1;

    for aux  = 1:n
        x_j  = x +(2*rand(size(x)) -1)*step; % neighbor solution x_j

        % if objective function lower else go thorught probab. acceptance
        if( F(x_j) < F(x) )
            x = x_j;                         % new solution
            fprintf('neighb: x = %-10s | F(x) = %.3f | new min\n', mat2str(x,2), F(x));
        else
            pb = exp( (F(x)-F(x_j))/T );     % probability threshold        
            if( rand(1,1) < pb )
                x = x_j;                     % new solution (not best but accepted)
                fprintf('neighb: x = %-10s | prob. = %.2f |\n', mat2str(x,2), pb); 
            end
        end
    end

    f(k) = F(x);        % evaluate objective function
    T    = beta*T;      % update temperature
    step = step*beta;   % update step size
    fprintf('k = %2d: x = %-10s | F(x) = %.4f | T = %.2f\n', k, mat2str(x,2), f(k), T);    % show progress
end
end