classdef q
    %BASICCLASS Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        w;
        e = [0;0;0]
    end
    
    methods
        function result = mtimes(obj1,obj2)
           m_union = [1 0 0; 0 1 0; 0 0 1];
           S_e = [ 0 -obj1.e(3) obj1.e(2); obj1.e(3) 0 -obj1.e(1); -obj1.e(2) obj1.e(1) 0];
           product1 = [obj1.w  -1*obj1.e.'; obj1.e obj1.w*m_union + S_e];
           product2 = [obj2.w;obj2.e];
            
           result = product1 * product2;
        end
        
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

