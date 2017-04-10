classdef r
    %R Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        body = [ 1 0 0; 0 1 0; 0 0 1]
    end
    
    methods
        function quat = ConvertToQ(obj)
            quaternion = q;
            quaternion.w  = sqrt(1 + obj.body(1,1) +obj.body(2,2) + obj.body(3,3))/2;
            quaternion.e(1) = (obj.body(3,2) - obj.body(2,3))/(4*quaternion.w);
            quaternion.e(2) = (obj.body(1,3) - obj.body(3,1))/(4*quaternion.w);
            quaternion.e(3) = (obj.body(2,1) - obj.body(1,2))/(4*quaternion.w);
            
            quat = quaternion;
        end
    end
end

