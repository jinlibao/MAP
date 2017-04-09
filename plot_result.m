function plot_result(t, S, S_hat)
figure(1);
plot(t, S, '.');
hold on;
plot(t, S_hat, '-o')
legend('Data points', 'Least Square Fitting', 'Location', 'best');
xlabel('t');
ylabel('S');
title('Least Square Fitting: Average Saturation - Travel Time Intervals');
end
