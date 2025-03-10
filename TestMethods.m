
graphics_toolkit("gnuplot");
graphics_toolkit();

x0 = 1; % lower bound for the domaine
xf = 2; % upper bound for the domaine
h = 0.01; % step size 

x = 1 :h: 2; % vector using for plot

y1 = AdamsBashforth(@myFunction, 1, 2, 4, h);
y2 = RungeKutta2(@myFunction, 1, 2, -4, h)

% hold on;
plot(x, y1, 'r', 'LineWidth', 2); % Plot y1 in red
plot(x, y2, 'g', 'LineWidth', 2); % Plot y1 in red