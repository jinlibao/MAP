function [c, S_hat, res] = solve_least_square(t, S, TYPE, N, ALPHA)

% Set default input arguments
if nargin == 2
    TYPE = 1;
    N = 4;
    ALPHA = 1;
elseif nargin == 3
    N = 4;
    ALPHA = 1;
elseif nargin == 4
    ALPHA = 1;
end

[A, b] = generate_matrix(t, S, TYPE, N, ALPHA);
c = (A' * A) \ (A' * b);
S_hat = A * c;
res = sqrt(sum((S - S_hat).^2));
end
