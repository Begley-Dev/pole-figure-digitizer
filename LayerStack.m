classdef LayerStack < handle
    %UNTITLED3 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Stack = {};
    end
    
    methods
        function obj = LayerStack()
            %UNTITLED3 Construct an instance of this class
            %   Detailed explanation goes here
            obj.Stack = cell(0,0);
        end
        
        function r = isEmpty(obj)
            r = isempty(obj.Stack);
        end
        
        function push(obj, layer)
            if obj.isEmpty
                obj.Stack{1,1} = layer;
            else
                obj.Stack{1,end+1} = layer;
            end
           
        end
        
        function layer = pop(obj)
            layer = obj.Stack{1, end};
            obj.Stack{1, end} = [];
        end
        
        function l = length(obj)
            l = size(obj.Stack,2);
        end
        
%         function outputArg = method1(obj,inputArg)
%             %METHOD1 Summary of this method goes here
%             %   Detailed explanation goes here
%             outputArg = obj.Property1 + inputArg;
%         end
    end
end

