% hill climbing algorithm
clc; clear; close all;


%%%%%%%%%%%%%%%%%%%%%%%% insert function to optmize %%%%%%%%%%%%%%%%%%%%%%%
% objective function
F  = @(x) 20 +x(1).^2 -10.*cos(2*pi.*x(1)) +x(2).^2 -10.*cos(2*pi.*x(2)); % Rastrigin 2D 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% initial solution
x = [5; 5];

% maximum number of iterations
k_max = 50;


%%%%%%%%%%%%%%%%%%%%%%%%%% initialize parameters %%%%%%%%%%%%%%%%%%%%%%%%%%
k     = 1;
alpha = 1;
neig  = 10;
tol   = 1e-6;


%%%%%%%%%%%%%%%%%%%%%%%%%%% hill climbing %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f(1) = F(x);                                    % evaluate objective function for x_0
fprintf('hill climbing optimization\n');
fprintf('k = %2d: x = %-10s | F(x) = %.4f\n', 0, mat2str(x,2), f(1));

while( k<=k_max )                               % stopping criterion (number of iterations) 
    k   = k+1;
    f_i = F(x);                                 % evaluate objective function for x_i
    
    for aux  = 1:neig
        x_j = x +alpha*(2*rand(size(x)) -1);    % random neighbor solution x_j     
        f_j = F(x_j);                           % evaluate objective function for x_j

        if( f_j < f_i )
            x   = x_j;                          % accepted new solution
            f_i = f_j;                          % new objective function
            fprintf('neighb: x = %-10s | F(x) = %.4f | new min\n', mat2str(x,2), f_j);
        end
    end

    f(k) = f_i;                                
    fprintf('k = %2d: x = %-10s | F(x) = %.4f\n', k-1, mat2str(x,2), f(k));  % show progress
%     if( abs(f(k)-f(k-1)) < tol )
%         fprintf('Converged: change < tol (%.e)\n', tol);
%         break;
%     end
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