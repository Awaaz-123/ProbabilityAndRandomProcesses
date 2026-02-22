% % Binomial Distribution
% 
% clc
% clear all
% p=0.7;
% n=20;
% 
% cdf = @(k)sum(arrayfun(@(i) nchoosek(n,i) .* (p.^i) .*((1-p).^(n-i)), 0:k));
% icdf = @(q)find(arrayfun(cdf, 0:n) >= q,1,'first');
% p1 = cdf(14) - cdf(11);
% p2 = 1-cdf(7);
% disp(['P(12<=X<=14) = ',num2str(p1)])
% disp(['P(X>=8) = ',num2str(p2)])
% % inverse CDF function quantile function
% q=0.95;
% disp(['ICDF (0.95) = ',num2str(icdf(q))])


% Poisson Distribution

clc
clear all
lambda=3;
cdf=@(k)sum(arrayfun(@(i)exp(-lambda)*lambda^i /factorial(i), 0:k));
p1=cdf(2);
cdf_builtin= poisscdf(2,lambda);
disp(['Manual Poison CDF F(2) = ',num2str(p1)])
disp(['Built-in Poison CDF F(2) = ',num2str(cdf_builtin)])
