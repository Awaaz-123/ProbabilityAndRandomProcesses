% 
% clc;
% clear;
% N = 100000;
% X = randi([0 1], N, 1);
% X(X == 0) = -1;
% Y = X;
% mean_X = mean(X);
% mean_Y = mean(Y);
% var_X = var(X, 1);
% var_Y = var(Y, 1);
% cov_value = cov(X, Y);
% cov_XY = cov_value(1,2);
% corr_manual = cov_XY / (sqrt(var_X) * sqrt(var_Y));
% corr_builtin = corr(X, Y);
% disp(['Correlation (manual) = ', num2str(corr_manual)])
% disp(['Correlation (built-in) = ', num2str(corr_builtin)])
