function [ x, f ] = hill_climbing( F, x, k_max )
% hill climbing algorithm

%%%%%%%%%%%%%%%%%%%%%%%%%% initialize parameters %%%%%%%%%%%%%%%%%%%%%%%%%%
% number of neighbors solutions and their distance bound
k = 1;
L = 4;   
b = 0.5;

%%%%%%%%%%%%%%%%%%%%%%%%%%% hill climbing %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f(k) = F(x);                              % evaluate objective function for x_0
fprintf('hill climbing optimization\n');
fprintf('k = %2d: x = %-10s | F(x) = %.4f\n', k, mat2str(x,2), f(k));

while( k<k_max )
    k = k+1;

    for aux  = 1:L
        x_j  = x +b*(1*rand(1,1) -0.5);   % random neighbor solution x_j

        if( F(x_j) < F(x) )
            x = x_j;                      % accepted solution
            fprintf('neighb: x = %-10s | F(x) = %.4f | new min\n', mat2str(x,2), F(x));
        end
    end

    f(k) = F(x);        % evaluate objective function
    fprintf('k = %2d: x = %-10s | F(x) = %.4f\n', k, mat2str(x,2), f(k));   % show progress
end
end