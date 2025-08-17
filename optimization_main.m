% optimization main file
clc; clear; close all; addpath(genpath(pwd));


%%%%%%%%%%%%%%%%%%%%%%%% insert function to optmize %%%%%%%%%%%%%%%%%%%%%%%
% objective function
F  = @(x) 20 +x(1).^2 -10.*cos(2*pi.*x(1)) +x(2).^2 -10.*cos(2*pi.*x(2)); % Rastrigin 2D 

% analytical gradient
Gr = @(x) [2*x(1)+20*pi*sin(2*pi*x(1)); 2*x(2)+20*pi*sin(2*pi*x(2))];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% initial solution
x_0 = [5; 5];

% maximum number of iterations
k_max = 30;


%%%%%%%%%%%%%%%%%%%%%%% slect optimization solver %%%%%%%%%%%%%%%%%%%%%%%%%
% solve for x
[ x, f ] = gradient_descent( F, Gr, x_0, k_max, 'Tol', 1e-6, 'Verbose', true );
%[ x, f ] = hill_climbing( F, -x_0, k_max );
%[ x, f ] = simulated_annealing( F, x_0, k_max );
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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