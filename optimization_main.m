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
k_max = 40;


%%%%%%%%%%%%%%%%%%%%%%% slect optimization solver %%%%%%%%%%%%%%%%%%%%%%%%%
% solve for x
%[ x, f ] = gradient_descent( F, Gr, x_0, k_max );
%[ x, f ] = hill_climbing( F, x_0, k_max );
[ x, f ] = simulated_annealing( F, x_0, k_max );
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

plot(0:length(f)-1, f, 'LineWidth',2.5, 'color','k');
title('Objective function evolution');
xlabel('Iteration');
ylabel('F(x)');
grid on;