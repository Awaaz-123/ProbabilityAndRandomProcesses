% 
% clc;
% clear;
% N = 100000;
% X = randi([0 1], N, 1);
% X(X == 0) = -1;
% Y = X;
% mean_X = mean(X);
% mean_Y = mean(Y);
% E_XY = mean(X .* Y);
% cov_manual = E_XY - mean_X * mean_Y;
% cov_matrix = cov(X, Y);
% cov_builtin = cov_matrix(1,2);
% disp(['E[X] = ', num2str(mean_X)])
% disp(['E[Y] = ', num2str(mean_Y)])
% disp(['E[XY] = ', num2str(E_XY)])
% disp(['Covariance (manual) = ', num2str(cov_manual)])
% disp(['Covariance (built-in) = ', num2str(cov_builtin)])
% 