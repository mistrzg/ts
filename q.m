classdef q
    %BASICCLASS Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        w;
        e = [0;0;0]
    end
    
    methods
        function r_out = ConvertToR(obj)
            r_matrix = r;
            
            r_matrix.body(1,1) = 1 - 2*obj.e(2)^2 - 2*obj.e(3)^2;
            r_matrix.body(1,2) = 2*obj.e(1)*obj.e(2) - 2*obj.e(3)*obj.w;
            r_matrix.body(1,3) = 2*obj.e(1)*obj.e(3) + 2&obj.e(2)*2*obj.w;
            
            r_matrix.body(2,1) = 2*obj.e(1)*obj.e(2) + 2*obj.e(3)*obj.w;
            r_matrix.body(2,2) = 1 - 2*obj.e(1)^2 - 2*obj.e(3)^2 ;
            r_matrix.body(2,3) = 2*obj.e(2)*obj.e(3) - 2*obj.e(1)*obj.w;

            r_matrix.body(3,1) = 2*obj.e(1)*obj.e(3) - 2*obj.e(2)*obj.w;
            r_matrix.body(3,2) = 2*obj.e(2)*obj.e(3) + 2*obj.e(1)*obj.w;
            r_matrix.body(3,3) = 1 - 2*obj.e(1)^2 - 2*obj.e(2)^2;

            r_out = r_matrix;
        end
    end
    
end

