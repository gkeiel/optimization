% optimization main file
clc; clear; close all; addpath(genpath(pwd));


%%%%%%%%%%%%%%%%%%%%%%%% insert function to optmize %%%%%%%%%%%%%%%%%%%%%%%
% objective function
F  = @(x) x(1).^2 +2.*x(2).^2 +x(1).*x(2) -6.*x(1) -10.*x(2);

% analytical gradient
Gr = @(x) [2*x(1)+x(2)-6; 4*x(2)+x(1)-10];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% initial solution
x_0 = [1; 1];

% maximum number of iterations
k_max = 20;


%%%%%%%%%%%%%%%%%%%%%%% slect optimization solver %%%%%%%%%%%%%%%%%%%%%%%%%
% solve for x
%[ x, f ] = gradient_descent( F, Gr, x_0, k_max );
%[ x, f ] = hill_climbing( F, -x_0, k_max );
[ x, f ] = simulated_annealing( F, x_0, k_max );
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% evolution of the objective function
figure(1);
plot(0:length(f)-1, f, 'LineWidth',2.5, 'color','k');
title('Objective function evolution');
xlabel('Iteration');
ylabel('F(x)');
grid on;

if length(x) == 2
    % create grid
    x_1 = -5:0.1:5;
    x_2 = -5:0.1:5;
    [X1, X2] = meshgrid(x_1, x_2);
    Z = arrayfun(@(a, b) F([a; b]), X1, X2);
    
    % 3D surface plot
    figure(2);
    surf(X1, X2, Z);
    title('Surface plot of F(x)');
    xlabel('x_1');
    ylabel('x_2');
    zlabel('F(x_1, x_2)');
    grid on;
    hold on;
    plot3(x(1),x(2), F(x), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
end