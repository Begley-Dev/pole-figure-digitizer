classdef VertexList < handle
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        verticies;
    end
    
    methods
        function obj = VertexList()
            %add optional args to initialize with x,y columns
        end
        
        function addVertex(obj,x,y)
            obj.verticies(end+1,:) = [x y];
        end
        
        function removeLastVertex(obj)
            obj.verticies(:,end)=[];
        end
        
        function [x, y] = splitIndices(obj)
            x = obj.verticies(:,1);
            y = obj.verticies(:,2);
        end
    end
end

