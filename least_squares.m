% Least Squares
% Author: Libao Jin
% Email: ljin1@uwyo.edu
% Date: 04/12/2017

clear; close all; clc;

N = 4; % Number of basis function
ALPHA = 1;
[t, S] = load_data();

R = [];
C = [];

for TYPE = 1:3
    for i = 1:4
        alpha = i * ALPHA;
        [c, S_hat, res] = solve_least_square(t, S, TYPE, N, alpha);
        C(i, :, TYPE) = c;
        subplot(3, 4, (TYPE - 1) * 4 + i);
        plot_result(t, S, S_hat, TYPE, alpha);
        R(i, TYPE) = res;
    end
end

R
C