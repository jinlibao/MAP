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
