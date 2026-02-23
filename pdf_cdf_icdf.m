% % exponential distribution
% %Define the parameter
% clc
% clear all
% lambda=3;
% x = 0:0.01:3;
% pdf = lambda * exp (-lambda * x);
% figure ;
% plot(x,pdf,'LineWidth',2);
% xlabel('x');
% ylabel('PDF');
% title('Exponential PDF');
% grid on;

% 
% % Cumulative Distribution Function (CDF)
% cdf = 1 - exp(-lambda * x);
% figure;
% plot(x, cdf, 'LineWidth', 2);
% xlabel('x');
% ylabel('CDF');
% title('Exponential CDF');
% grid on;
% % Inverse CDF (ICDF / Quantile Function)
% u = rand(1,1000); % u
% icdf = -log(1 - u) / lambda;


% %Continous uniform Distribution
% %parameter density function (PDF)
% clc
% clear all
% a = 1;
% b = 5;
% x = 0:0.01:3;
% pdf = ones(size(x))/(b-a);
% figure;
% plot(x,pdf,'LineWidth',2);
% xlabel('x');
% ylabel('pdf');
% title('Uniform Distribution PDF');
% grid on;

% % Cumulative Distribution Function (CDF)
% cdf = (x - a) / (b - a);
% figure;
% plot(x, cdf, 'LineWidth', 2);
% xlabel('x');
% ylabel('CDF');
% title('Uniform Distribution CDF');
% grid on;
% % Inverse CDF (ICDF / Quantile Function)
% u = rand(1,1000); % uniform random numbers in (0,1)
% icdf = a + u * (b - a);
% figure;
% histogram(icdf, 30, 'Normalization', 'pdf');
% xlabel('x');
% ylabel('Probability Density');
% title('Uniform Random Variables using ICDF');
% grid on;

% 
% %binomial Distribution
% clc
% clear all
% n =10;
% p = 0.5;
% sample_size=1000;
% sample_binomial = sum(rand(sample_size,n)<p,2);
% histogram(sample_binomial,'Normalization','pdf');
% title('Binomial Distribution');
% xlabel('Number of  successes');
% ylabel('Probability');


% %poisson Distribution
% clc
% clear all
% lambda = 4;
% n =10;
% p = 0.5;
% sample_size =10;
% sample_poisson = sum(rand(sample_size,n)<p,2);
% histogram(sample_poisson,'Normalization','pdf');
% title('Poisson Distribution');
% xlabel('Number of events');
% ylabel('Probability');

%exponential Distribution
clc
clear all
lambda =1;
sample_size = 1000;
sample_exponential = -log(rand(sample_size,1))/lambda;
histogram(sample_exponential,'Normalization','pdf');
title('Exponential Distribution');
xlabel('Value');
ylabel('Probability')

% %Continous Uniform Distribution
% clc
% clear all
% a = 0;
% b = 10;
% sample_size = 1000;
% samples_uniform = a + (b - a) * rand(sample_size,1);
% histogram(samples_uniform, 'Normalization', 'pdf');
% title('Continuous Uniform Distribution');
% xlabel('Value');
% ylabel('Probability');

% 
% %Normal Distribution
% clear
% clc
% mu = 0;
% sigma = 1;
% sample_size = 1000;
% samples_normal = mu + sigma*randn(sample_size, 1);
% histogram(samples_normal,'Normalization', 'pdf');
% title('Normal Distribution');
% xlabel('Value');
% ylabel('Probability');