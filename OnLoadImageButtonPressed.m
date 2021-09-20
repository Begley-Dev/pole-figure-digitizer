function OnLoadImageButtonPressed(app,tab)
%ONLOADIMAGEBUTTONPRESSED Summary of this function goes here
%   Detailed explanation goes here

filterspec = {'*.jpg;*.tif;*.png;*.gif','All Image Files'};
[f, p] = uigetfile(filterspec);

% Make sure user didn't cancel uigetfile dialog
if (ischar(p))
    fname = [p f];
    try
        im = imread(fname);
        %im = flip(im, 1);
        image(im);
    catch ME
        % If problem reading image, display error message
        uialert(app.UIFigure, ME.message, 'Image Error');
        return; 
    end
end

app.im{tab} = im;

app.ax = plotImage(app.im{tab});

end

