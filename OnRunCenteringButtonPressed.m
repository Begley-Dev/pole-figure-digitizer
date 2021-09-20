function OnRunCenteringButtonPressed(app, tab)
%ONRUNCENTERINGBUTTONPRESSED Summary of this function goes here
%   Detailed explanation goes here
    
    app.tutorial.Centering_1();
    
    % get center
    [cx,cy] = ginput(1);
    
    hold on;
    center = plot(app.ax, cx, cy, 'ro', 'MarkerSize', 10, 'Color', [1 0 0]);
    hold off;
            
    [ex,ey] = ginput(1);
    hold on;
    edge = plot(app.ax, ex, ey, 'ro', 'MarkerSize', 10, 'Color', [1 0 0]);
    hold off;
    
    radius = norm([cx cy] - [ex ey]);
    
    app.bc = BoundaryCircle(cx,cy,radius,0:0.01:2*pi);
    app.bc.plot(app.ax);
    
    delete(center);
    delete(edge);
    
    pad = 1.2;
    app.im{tab} = imcrop(app.im{tab}, [cx-radius*pad cy-radius*pad cx+radius*pad cy+radius*pad]);
    app.im{tab} = flip(app.im{tab}, 1);
    
    close;
    delete(app.bc.handle);
    
    app.ax = plotImage(app.im{tab});
    %app.bc.plot(app.ax);
    
    app.tutorial.Centering_2();
    
    % get center
    [cx,cy] = ginput(1);
    
    hold on;
    center = plot(app.ax, cx, cy, 'ro', 'MarkerSize', 10, 'Color', [1 0 0]);
    hold off;
            
    [ex,ey] = ginput(1);
    hold on;
    edge = plot(app.ax, ex, ey, 'ro', 'MarkerSize', 10, 'Color', [1 0 0]);
    hold off;
    
    radius = norm([cx cy] - [ex ey]);
    
    app.bc = BoundaryCircle(cx,cy,radius,0:0.01:2*pi);
    app.bc.plot(app.ax);
    
    
end
