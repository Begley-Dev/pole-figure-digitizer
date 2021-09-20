function [outputArg1,outputArg2] = OnAddPolygonButtonPressed(app, tab)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    n = 1;
    
    while n == true
        
        [x,y,button] = ginput(1);
            
        if button == 1
            plotDot(app, x, y, 5, [1 0 0]);
        elseif button == 28
            delete(app.dots(end));
        else
            n = false;
        end
    end
end

