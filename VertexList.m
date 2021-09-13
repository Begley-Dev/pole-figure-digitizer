classdef VertexList < handle
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        verticies;
    end
    
    methods
        function obj = VertexList(varargin)
            if nargin == 1
                obj.verticies = varargin{1};
            end
        end
        
        function addVertex(obj,varargin)
            if nargin == 2
                for i = 1:length(varargin{1})
                    obj.verticies(end+1,:) = varargin{1}(i,:);
                end
            elseif nargin == 3
                for i = 1:length(varargin{1})
                    obj.verticies(end+1,:) = [varargin{1}(i) varargin{2}(i)];
                end
            end
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

