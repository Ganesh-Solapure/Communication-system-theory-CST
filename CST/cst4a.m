clc;
clear all;
close all;

% Define the range of values for the random variable
x = -5:0.1:5;


% Define the parameters of the distribution (you can replace this with your distribution)
mu = 0;    % Mean
sigma = 1; % Standard deviation

% Compute the PDF using the normal distribution as an example
pdf_values = normpdf(x, mu, sigma);

% Compute the CDF using the normal distribution as an example
cdf_values = normcdf(x, mu, sigma);

% Plot the PDF
subplot(2,1,1);
plot(x, pdf_values, 'b', 'LineWidth', 2);
xlabel('x');
ylabel('PDF');
title('Probability Density Function (PDF)');

% Plot the CDF
subplot(2,1,2);
plot(x, cdf_values, 'r', 'LineWidth', 2);z
xlabel('x');
ylabel('CDF');
title('Cumulative Distribution Function (CDF)');

% Adjust the figure layout
sgtitle('PDF and CDF of a Random Variable');
