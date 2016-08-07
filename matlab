#继承情况下的Constructor
classdef Base<handle
    properties
        b=1;
    end
    methods
        function obje=Base()
            disp('Base');
            obje.foo();
        end
        function foo(obj)
            disp('Base foo called');
        end
    end
end
