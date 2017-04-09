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
