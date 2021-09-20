function OnNewLayerButtonPressed(app, tab)
%ONNEWLAYERBUTTONPRESSED Summary of this function goes here
%   Detailed explanation goes here

    if isempty(app.ls{tab})
        app.ls{tab} = LayerStack;
    end
    
    layer = Layer(app.D1_LayerContourLevelEditField.Value);
    app.ls{tab}.push(layer);
    
    app.D1_SelectLayerDropDown.Items{end+1} = num2str(length(app.D1_SelectLayerDropDown.Items)+1);
    app.D1_ActiveLayerLabelUpdateable.Text = num2str(app.ls{tab}.length);
    
    app.D1_SelectLayerDropDown.Value = app.D1_SelectLayerDropDown.Items{end};

end

