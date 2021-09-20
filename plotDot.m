function plotDot(app, x, y, size, rgb_triplet)
hold(app.ax, 'on')
app.dots(end+1) = plot(app.ax, x, y, 'ro', 'MarkerSize', size, 'Color', rgb_triplet);
hold(app.ax, 'off')
end

