function plot_result(t, S, S_hat, TYPE, ALPHA)

%PLOT_RESULT
% Plot the data points and the fitted function through the method of least squares
% Input arguments: t, S, S_hat, TYPE, ALPHA
% t: the cumulative number of pore volumes injected.
% S: the average saturation of water.
% S_hat: the fitted value of saturation of water by method of least squares
% TYPE: the type of basis functions
%       1 is for arctan(x), 
%       2 is for 1 - exp(-ALPHA * x)
% ALPHA: parameter of basis function

plot(t, S, 'o');
hold on;
plot(t, S_hat, '-')
axis([0 2 0.35 0.55]);
legend('Data points', 'Least Square Fitting', 'Location', 'best');
xlabel('\tau');
ylabel('S(\tau)');
string = strcat('S(\tau) - \tau: Type: ', num2str(TYPE), ' \alpha: ', num2str(ALPHA));
title(string);
end
