function [outputArg1,outputArg2] = OnSelectLayerDropDownValueChanged(app, tab)
%ONSELECTLAYERDROPDOWNVALUECHANGED Summary of this function goes here
%   Detailed explanation goes here
    layer_index = app.ls{tab}.layer
    app.D1_ActiveLayerLabelUpdateable.Text = num2str(app.ls{tab}.length);
end

