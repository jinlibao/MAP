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
