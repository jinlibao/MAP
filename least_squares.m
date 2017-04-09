% Least Squares
% Author: Libao Jin
% Email: ljin1@uwyo.edu
% Date: 04/03/2017

clear; close all; clc;

TYPE = 2; % 1 for exponential; 2 for arctan;
N = 4; % Number of basis function
ALPHA = 0.1;
[t, S] = load_data();
[c, S_hat] = solve_least_square(t, S, TYPE, N, ALPHA)
plot_result(t, S, S_hat);

function [t, S] = load_data(filename)

%LOAD_DATA
% Read data from excel file
%
% Input argument: filename
% filename: string
%
% Output argument: data
% data is an N by 2 matrix, where N is the number of time intervals.
% data[:, 1], the first column of data is time intervals.
% data[:, 2], the second column of data is saturation of water.

% Set default input arguments: filename
if nargin == 0
    filename = 'Fluid_Fractions_Produced_after_Breakthrough';
end

% Read data from excel file
raw_data = xlsread(filename, 'Data', 'A1:D49');
t = raw_data(:, 1); % Time Interval
S = raw_data(:, 2) ./ (raw_data(:, 2) + raw_data(:, 3)); % Saturation of Water
end

function [c, S_hat] = solve_least_square(t, S, TYPE, N, ALPHA)

% Set default input arguments
if nargin == 2
    TYPE = 1;
    N = 4;
    ALPHA = 0.1;
elseif nargin == 3
    N = 4;
    ALPHA = 0.1;
elseif nargin == 4
    ALPHA = 0.1;
end

[A, b] = generate_matrix(t, S, TYPE, N, ALPHA);
c = (A' * A) \ (A' * b);
S_hat = A * c;
end

function [A, b] = generate_matrix(t, S, TYPE, N, ALPHA)

%GENERATE_MATRIX
% Generate A and b
%
% Input argument: data, N
% data: N by 2 matrix
% N: size of basis functions
% 

A = [];

for i = 1:N
    A(:, i) = phi(i * t, TYPE, ALPHA);
end

b = S;
end

function P = phi(t, TYPE, ALPHA)

n = length(t);
P = zeros(n, 1);

% Set default input arguments
if nargin == 1
    TYPE = 1;
    ALPHA = 0.1;
elseif nargin == 2
    ALPHA = 0.1;
end

if TYPE == 1
    P(:, 1) = 1 - exp(-ALPHA * t);
else
    P(:, 1) = atan(ALPHA * t);
end
end

function plot_result(t, S, S_hat)
figure(1);
plot(t, S, '.');
hold on;
plot(t, S_hat, '-o')
legend('Data points', 'Least Square Fitting', 'Location', 'best');
xlabel('t');
ylabel('S');
title('Least Square Fitting: Average Saturation - Travel Time Intervals');
end
