classdef r
    %R Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        r11 = 1;
        r12 = 0;
        r13 = 0;
        
        r21 = 0;
        r22 = 1;
        r23 = 0;
        
        r31 = 0;
        r32 = 0;
        r33 = 1;
    end
    
    methods
        function quat = ConvertToQ(obj)
            quaternion = q;
            quaternion.w  = sqrt(1 + obj.r11 +obj.r22 + obj.r33)/2;
            quaternion.e1 = (obj.r32 - obj.r23)/(4*quaternion.w);
            quaternion.e2 = (obj.r13 - obj.r31)/(4*quaternion.w);
            quaternion.e3 = (obj.r21 - obj.r12)/(4*quaternion.w);
        end
    end
end

