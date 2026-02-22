

clc
clear all
n = 10;
p = [0.2 0.5 0.3];
u = rand(n,1);
edges = [0 cumsum(p)];
categories = discretize(u,edges);
counts = accumarray(categories,1);
counts
bar(counts)
xlabel('Category');
ylabel('Count');
title('Multinomial Distribution Outcome');
grid on;
