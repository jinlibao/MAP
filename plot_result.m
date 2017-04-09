function plot_result(t, S, S_hat, Type, Alpha)
plot(t, S, 'o');
hold on;
plot(t, S_hat, '-')
axis([0 50 0 0.5]);
legend('Data points', 'Least Square Fitting', 'Location', 'best');
xlabel('t');
ylabel('S');
string = strcat('S - t: Type: ', num2str(Type), ' Alpha: ', num2str(Alpha));
title(string);
end
