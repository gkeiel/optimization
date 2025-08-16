% simulated annealing algorithm
clc; clear; close all;


%%%%%%%%%%%%%%%%%%%%%%%% insert function to optmize %%%%%%%%%%%%%%%%%%%%%%%
% objective function
F  = @(x) 20 +x(1).^2 -10.*cos(2*pi.*x(1)) +x(2).^2 -10.*cos(2*pi.*x(2)); % Rastrigin 2D 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% initial solution
x = [5; 5];

% maximum number of iterations
k_max = 30;

%%%%%%%%%%%%%%%%%%%%%%%%%% initialize parameters %%%%%%%%%%%%%%%%%%%%%%%%%%
k    = 1;   
n    = 10;      % number of neighbors
beta = 0.98;    % temperature cooling rate
T    = 1;       % initial temperature                   
step = 2;       % initial step size

%%%%%%%%%%%%%%%%%%%%%%%%%%% simulated annealing %%%%%%%%%%%%%%%%%%%%%%%%%%%
f(k) = F(x);                                 % evaluate objective function for x_0
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

% evolution of the objective function
figure(1);
plot(0:length(f)-1, f, 'LineWidth',2.5, 'color','k');
title('Objective function evolution');
xlabel('Iteration');
ylabel('f(x)');
grid on;

if length(x) == 2
    % create grid
    x_1 = -5:0.2:5;
    x_2 = -5:0.2:5;
    [X1, X2] = meshgrid(x_1, x_2);
    Z = arrayfun(@(a, b) F([a; b]), X1, X2);
    
    % 3D surface plot
    figure(2);
    surf(X1, X2, Z);
    title('Surface plot of f(x)');
    xlabel('x_1');
    ylabel('x_2');
    zlabel('f(x_1, x_2)');
    grid on;
    hold on;
    plot3(x(1),x(2), F(x), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
end