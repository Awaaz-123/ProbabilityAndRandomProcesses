clc;
clear
N=100
x1=randn(N,1);
x2=randn(N,1);
x3=randn(N,1);
beta0=1.5;
beta1=2;
beta2=3;
beta3=0.5;
epsilon = 0.3*randn(N,1);
y=beta0+beta1*x1+beta2*x2+beta3*x3+epsilon;
X=[ones(N,1) x1 x2 x3];
beta_hat=X\y;
y_pred=X*beta_hat;
error  = y-y_pred;
SS_total = sum((y-mean(y)).^2);
SS_residual = sum(error.^2);
R_squared = 1-(SS_residual/SS_total);
disp('Estimated Coefficients: ');
disp(beta_hat);
disp(['R-squared = ', num2str(R_squared)]);
figure
scatter(y,y_pred,'filled');
xlabel('Actual Y');
ylabel('Predicate Y');
title('Multilinear Regression Result');
grid on;
