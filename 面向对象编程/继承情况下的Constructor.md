# 继承情况下的Constructor
在子类构造函数中调用基类构造函数时，obj=obj@Base()；@前的obj必须是子类构造函数的输出参数，并且，基类构造函数的输出也是子类的obj，没有新创建一个对象。

基类

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

子类

    classdef Derived<Base
        properties
            a=1;
        end
        methods
            function objc=Derived()
                objc=objc@Base();
                disp('Derived');
            end
            function foo(obj)
                disp('Derived foo called');
            end
        end
    end

子类中的输出对象名称与基类中的也不同。
