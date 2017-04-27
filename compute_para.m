function [S_outlet, r] = compute_para(t, mu_w, mu_o)

% average water saturation
s = 0.0551 * atan(3 * t) + 0.1896 * atan(6 * t) - 1.1889 * atan(9 * t) + 1.2861 * atan(12 * t);
% derivative of water saturation with respect to tau
ds = 0.1653 ./ (1 + 9 * t .^ 2) + 1.1376 ./ (1 + 36 * t .^ 2) - 10.7001 ./ (1 + 81 * t .^ 2) + 15.4332 ./ (1 + 144 * t .^ 2);
% fractional flow
f = 1 - ds;
% outlet saturation
S_outlet = s - t .* ds;
% ratio of the relative permeabilities
r = mu_w / mu_o * f ./ ds;

figure()
plot(S_outlet, r);
grid on;
xlabel('S(L, \tau)');
ylabel('k_{rW}/k_{rO}')
title('Ratio of the Relative Permeabilities k_{rW}/k_{rO} vs. Outlet Saturation S(L, \tau)');
end