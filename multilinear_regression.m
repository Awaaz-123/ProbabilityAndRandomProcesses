clc
clear all

N = 100;
% 1. Generate Predictors
x1 = randn(N,1); 
x2 = randn(N,1); 
x3 = randn(N,1); % Noise variable

% 2. True Model Parameters
beta_true = [1.5; 2 ; 3 ;0.5]; % [Intercept, x1, x2, x3]

% 3. Generate Response with Gaussian Noise
epsilon = 0.3 * randn(N,1);
y = beta_true(1) + beta_true(2)*x1 + beta_true(3)*x2 +beta_true(4)*x3+epsilon;

% 4. Prepare Design Matrix (Must include the 'ones' column for the intercept)
X = [ones(N,1), x1, x2, x3];

% 5. Perform Regression
% b = coefficients, bint = 95% confidence intervals
% r = residuals, rint = intervals for diagnostics
% stats = [R^2, F-statistic, p-value, error variance]
[b, ~, ~, ~, stats] = regress(y, X);

% Display Results
Estimated_Coefficient = b

% 6. Extract Metrics
R_squared = stats(1)

% 7. Visualization: Residual Analysis
figure;
scatter(y, X*b, 'filled');
xlabel('Actual Y');
ylabel('Predicted Y');
title('Multilinear Regression Result');
grid on;
