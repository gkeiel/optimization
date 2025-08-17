% gradient descent algorithm
clc; clear; close all;


%%%%%%%%%%%%%%%%%%%%%%%% insert function to optmize %%%%%%%%%%%%%%%%%%%%%%%
% objective function
F  = @(x) x(1).^2 +2.*x(2).^2 +x(1).*x(2) -6.*x(1) -10.*x(2);

% analytical gradient
Gr = @(x) [2*x(1)+x(2)-6; 4*x(2)+x(1)-10];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% initial solution
x = [5; 5];

% maximum number of iterations
k_max = 50;

%%%%%%%%%%%%%%%%%%%%%%%%%% initialize parameters %%%%%%%%%%%%%%%%%%%%%%%%%%
k     = 1;
alpha = 1e-1;
tol   = 1e-3;

%%%%%%%%%%%%%%%%%%%%%%%%%%% gradient descent %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f(1) = F(x);    % evaluate objective function for x_0
grad = Gr(x);   % evaluate gradient for x_0
fprintf('gradient descent optimization\n');
fprintf('k = %2d: x = %-10s | F(x) = %.4f\n', 0, mat2str(x,2), f(1));

while( k<=k_max && norm(grad)>tol ) % stopping criterion (number of iterations or optimality) 
    k    = k+1;
    grad = Gr(x);         % gradient
    x    = x -alpha*grad; % move in descent direction 

    f(k) = F(x);          % evaluate objective function
    fprintf('k = %2d: x = %-10s | F(x) = %.4f\n', k-1, mat2str(x,2), f(k));  % show progress
end

% evolution of the objective function
figure(1);
plot(0:length(f)-1, f, 'LineWidth',2.5, 'color','k');
title('Objective function evolution');
xlabel('k');
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