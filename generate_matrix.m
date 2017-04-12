function [A, b] = generate_matrix(t, S, TYPE, N, ALPHA)

%GENERATE_MATRIX
% Generate A and b
%
% Input arguments: t, S, TYPE, N, ALPHA
% t: the cumulative number of pore volumes injected.
% S: the average saturation of water.
% TYPE: the type of basis functions
%       1 is for arctan(x), 
%       2 is for 1 - exp(-ALPHA * x)
% N: size of basis functions
% ALPHA: parameter of basis function
%
% Output arguments: A, b
% A: the matrix of the linear system
% b: the observation of average saturation of data 

A = [];

for i = 1:N
    A(:, i) = phi(i * t, TYPE, ALPHA);
end

b = S;
end
