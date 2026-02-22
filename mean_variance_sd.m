% 1) Mean and variance and Standard deviation

clc
clear all
data = [8,12,15,17,20,25];
n = length(data);

%Mean
mean_value = sum(data)/n;
disp(['Mean = ' num2str(mean_value)]);

%variance
vairance_value = sum((data - mean_value).^2)/n;
disp(['Variance = ' num2str(vairance_value)]);

%Standard deviation
std_deviartion=sqrt(vairance_value);
disp(['Standard Deviation = ' num2str(std_deviartion)]);

% Mode
mode_value = mode(data);
disp(['Mode = ' num2str(mode_value)]);


