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
