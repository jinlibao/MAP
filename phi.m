function P = phi(t, TYPE, ALPHA)

%PHI
% Evaluate the values of the basis functions
% Input arguments: t, TYPE, ALPHA
% t: the independent variable, here is the cumulative number of pore volumes injected.
% TYPE: the type of basis functions
%       1 is for arctan(x), 
%       2 is for 1 - exp(-ALPHA * x)
% ALPHA: the parameter of the basis function
%
% Output argument: P
% P: the value of the basis function at t with the parameter ALPHA.

n = length(t);
P = zeros(n, 1);

% Set default input arguments
if nargin == 1
    TYPE = 1;
    ALPHA = 1;
elseif nargin == 2
    ALPHA = 1;
end

if TYPE == 1
    P(:, 1) = 1 - exp(-ALPHA * t);
elseif TYPE == 2
    P(:, 1) = atan(ALPHA * t);
elseif TYPE == 3
    P(:, 1) = (exp(ALPHA * t) - exp(-ALPHA * t)) ./ (exp(ALPHA * t) + exp(-ALPHA * t));
end
end
