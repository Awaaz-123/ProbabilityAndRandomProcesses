clc
clear all
N=10000;
mu = [1;2;3];
sigma = [2 0.5 0.3; 0.5 1 0.4; 0.3 0.4 1];
A = chol(sigma,'lower');
Z = randn(3,N);
X = mu + A*Z;
X = X';
sample_mean = mean(X)
sample_cov = cov(X)
