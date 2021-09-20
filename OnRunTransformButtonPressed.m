function OnRunTransformButtonPressed(app, tab)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
movingpoints(1,1) = app.bc.x0;
movingpoints(1,2) = app.bc.y0;
fixedpoints(1,1) = app.bc.x0;
fixedpoints(1,2) = app.bc.y0;

for i = 1:1:4
    
    [x(i), y(i)] = ginput(1);
    
    if mod(i,2) ~= 0
        plotDot(app, x(i), y(i), 5, [0 0 1])
    else
        plotDot(app, x(i), y(i), 5, [1 0 0])
    end
end

for i = 1:2:length(x)-1
    movingpoints(i/2+0.5+1,1) = x(i);
    movingpoints(i/2+0.5+1,2) = y(i);
end

for i = 2:2:length(x)
    fixedpoints(i/2+1,1) = x(i);
    fixedpoints(i/2+1,2) = y(i);
end

tform = fitgeotrans(movingpoints, fixedpoints, 'nonreflectiveSimilarity');

app.im{tab} = imwarp(app.im{tab}, tform);

close;
delete(app.bc.handle);

app.ax = plotImage(app.im{tab});
app.bc.plot(app.ax);

end

