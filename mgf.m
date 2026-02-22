clc 
clear all
x = [5 15 25];
f = [2 3 5];
k = length(x);
N = sum(f);
mean_g = sum(f.*x)/ N;

%Raw moments about origin
%computing the first 4 raw moment

mu_dash = zeros(1,4);
for r = 1:4
    for j = 1:k
        mu_dash(r) = mu_dash(r) + f(j)*(x(j)^r);
    end
    mu_dash(r) = mu_dash(r)/N;
end
disp('Grouped Data Raw Moments: ')
disp(mu_dash)

%2
% Central Moments (Moments about Mean)

mu = zeros(1,4);
for r = 2:4
    for j = 1:k
        mu(r) = mu(r) + f(j) * (x(j) - mean_g)^r;
    end
    mu(r) = mu(r)/N;
end

disp('Grouped Data Central Moments: ')
disp(mu)


%ungrouped data moment
data = [2 4 6 8 10];
n = length(data);

%raw moment (method of moment)

m1 = mean(data);
m2 = sum(data.^2)/n;
m3 = sum(data.^3)/n;
m4 = sum(data.^4)/n;
fprintf("ungrouped data raw moments: \n");
fprintf('m1 = %.2f\n',m1);
fprintf('m2 = %.2f\n',m2);
fprintf('m3 = %.2f\n',m3);
fprintf('m4 = %.2f\n',m4);

%central moment
m1 = sum(data-mean(data))/n;
m2 = sum((data-mean(data)).^2)/n;
m3 = sum((data-mean(data)).^3)/n;
m4 = sum((data-mean(data)).^4)/n;
fprintf("ungrouped data central moments: \n");
fprintf('m1 = %.2f\n',m1);
fprintf('m2 = %.2f\n',m2);
fprintf('m3 = %.2f\n',m3);
fprintf('m4 = %.2f\n',m4);


%Binomial distribution - CDF
% 
% p=0.7;
% n=20;
% cdf = @(k) sum(arrayfun(@(i) nchoosek(n,i) .* (p.^i) .*((1-p).^(n-i)), 0:k));
% p1=cdf(14)-cdf(11);
% p2=1-cdf(7);
% disp(['P(12 <= X <=14) = ',num2str(p1)])
% disp(['P(X>=8) = ',num2str(p2)])